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

Task_Handle main_task;

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
    /* GPIO initialization */
    GPIO_init();

    /* Set the callback function */
    GPIO_setCallback(USER_LED0, AppGpioCallbackFxn);

    /* Enable GPIO interrupt on the specific gpio pin */
    GPIO_enableInt(USER_LED0);

    /* Write high to gpio pin to control LED1 */
    GPIO_write((USER_LED1), GPIO_PIN_VAL_HIGH);
    UART_printf("Interrupção setada\n\n");
    AppDelay(DELAY_VALUE);


    //GPIO_toggle(USER_LED0);


    while(1)
    {
        /* Trigger interrupt */
        GPIOTriggerPinInt(GPIO_BASE_ADDR, 0, GPIO_LED_PIN);

        AppDelay(DELAY_VALUE);
    }
    Task_exit();
}

/*
 *  ======== main ========
 */
int main(void){

    Task_Params taskParams;

    /* Call board init functions */
    Board_initGPIO();

    GPIODirModeSet(GPIO_BASE_ADDR, GPIO_LED_PIN_NUM2, GPIO_DIR_OUTPUT);

    GPIOPinWrite(GPIO_BASE_ADDR, GPIO_LED_PIN_NUM2, GPIO_PIN_HIGH);

    UART_printf("MAKEFILE CRIADO!!!\n");

    UART_printf("GPIO %d aceso.\n", GPIO_LED_PIN_NUM2);


    Task_Params_init(&taskParams);
        taskParams.priority = 1;
        taskParams.stackSize = 0x1400;
        main_task = Task_create (gpio_test, &taskParams, NULL);

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
    /* Toggle LED1 */
    GPIO_toggle(USER_LED1);
    AppDelay(DELAY_VALUE);
    gpio_intr_triggered = 1;
}


