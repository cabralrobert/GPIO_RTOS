/* XDCtools Header files */
#include <xdc/std.h>
#include <xdc/cfg/global.h>
#include <xdc/runtime/System.h>
#include <xdc/runtime/Error.h>


/* BIOS Header files */
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>

#include <stdio.h>

/* TI-RTOS Header files */
#include <ti/drv/gpio/GPIO.h>
#include <ti/drv/gpio/soc/GPIO_soc.h>

#include "GPIO_log.h"
#include "GPIO_board.h"

#include <ti/board/board.h>

#include <ti/drv/uart/UART.h>
#include <ti/drv/uart/UART_stdio.h>

/**********************************************************************
 ************************** Macros ************************************
 **********************************************************************/
#define DELAY_VALUE       (0x6FFFFFU)

/**********************************************************************
 ************************** Internal functions ************************
 **********************************************************************/

Task_Handle main_task, main_task1, main_task2, main_task3;

#define GPIO_LED_USER0 21
#define GPIO_LED_USER1 22
#define GPIO_LED_USER2 23
#define GPIO_LED_USER3 24


/* Delay function */
void AppDelay(unsigned int delayVal);

/* Callback function */
void AppGpioCallbackFxn(void);
/*
 *  ======== Board_initI2C ========
 */
static void Board_initGPIO(void)
{
    Board_initCfg boardCfg;

    boardCfg = BOARD_INIT_PINMUX_CONFIG |
            BOARD_INIT_MODULE_CLOCK |
            BOARD_INIT_UART_STDIO;

    Board_init(boardCfg);
}

/**********************************************************************
 ************************** Global Variables **************************
 **********************************************************************/
volatile uint32_t gpio_intr_triggered = 0;
uint32_t gpioBaseAddr;
uint32_t gpioPin;

/*
 *  ======== test function ========
 */
void gpio_test(UArg arg0, UArg arg1)
{
    GPIO_init();
    GPIO_setCallback(USER_LED0, AppGpioCallbackFxn);

    GPIO_enableInt(USER_LED0);

    GPIO_write((USER_LED1), GPIO_PIN_VAL_HIGH);
    UART_printf("Interrupção setada\n\n");
    AppDelay(DELAY_VALUE);


    //GPIO_toggle(USER_LED0);


    while(1)
    {
        GPIOTriggerPinInt(GPIO_BASE_ADDR, 0, GPIO_LED_PIN);

        AppDelay(DELAY_VALUE);
    }
    Task_exit();
}

void gpioLedUser0(UArg arg0, UArg arg1){
  while(1){
  GPIOPinWrite(GPIO_BASE_ADDR, GPIO_LED_USER0, GPIO_PIN_HIGH);
  AppDelay(2*DELAY_VALUE);
  GPIOPinWrite(GPIO_BASE_ADDR, GPIO_LED_USER0, GPIO_PIN_LOW);
  AppDelay(2*DELAY_VALUE);
  Task_sleep(1);
  }
}

void gpioLedUser1(UArg arg0, UArg arg1){
  while(1){
  GPIOPinWrite(GPIO_BASE_ADDR, GPIO_LED_USER1, GPIO_PIN_HIGH);
  AppDelay(3*DELAY_VALUE);
  GPIOPinWrite(GPIO_BASE_ADDR, GPIO_LED_USER1, GPIO_PIN_LOW);
  AppDelay(3*DELAY_VALUE);
  Task_sleep(1);
  }
}

void gpioLedUser2(UArg arg0, UArg arg1){
  while(1){
  GPIOPinWrite(GPIO_BASE_ADDR, GPIO_LED_USER2, GPIO_PIN_HIGH);
  AppDelay(4*DELAY_VALUE);
  GPIOPinWrite(GPIO_BASE_ADDR, GPIO_LED_USER2, GPIO_PIN_LOW);
  AppDelay(4*DELAY_VALUE);
  Task_sleep(1);
}
}

void gpioLedUser3(UArg arg0, UArg arg1){
  while(1){
  GPIOPinWrite(GPIO_BASE_ADDR, GPIO_LED_USER3, GPIO_PIN_HIGH);
  AppDelay(5*DELAY_VALUE);
  GPIOPinWrite(GPIO_BASE_ADDR, GPIO_LED_USER3, GPIO_PIN_LOW);
  AppDelay(5*DELAY_VALUE);
  Task_sleep(1);
  }
}

/*
 *  ======== main ========
 */


int main(void){

    Task_Params taskParams, taskParams1;

    /* Call board init functions */
    Board_initGPIO();

    UART_printf("##### LED TOGGLE #####\n");

    GPIODirModeSet(GPIO_BASE_ADDR, GPIO_LED_USER0, GPIO_DIR_OUTPUT);
    GPIODirModeSet(GPIO_BASE_ADDR, GPIO_LED_USER1, GPIO_DIR_OUTPUT);
    GPIODirModeSet(GPIO_BASE_ADDR, GPIO_LED_USER2, GPIO_DIR_OUTPUT);
    GPIODirModeSet(GPIO_BASE_ADDR, GPIO_LED_USER3, GPIO_DIR_OUTPUT);


    Task_Params_init(&taskParams);
        taskParams.priority = 1;
        taskParams.stackSize = 0x1400;

    Task_Params_init(&taskParams1);
        taskParams.priority = 2;
        taskParams.stackSize = 0x1400;


        main_task = Task_create (gpioLedUser0, &taskParams, NULL);
        main_task1 = Task_create (gpioLedUser1, &taskParams1, NULL);
        main_task2 = Task_create (gpioLedUser2, &taskParams, NULL);
        main_task3 = Task_create (gpioLedUser3, &taskParams, NULL);

    /* Start BIOS */
    BIOS_start();
    return (0);
}

/*
 *  ======== AppDelay ========
 */
void AppDelay(unsigned int delayVal){
    while(delayVal)
        delayVal--;
}

/*
 *  ======== Callback function ========
 */
void AppGpioCallbackFxn(void){
    UART_printf("FUNCAO\n");
    GPIO_toggle(USER_LED1);
    AppDelay(DELAY_VALUE);
    gpio_intr_triggered = 1;
}


