#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#

unexport MAKEFILE_LIST
MK_NOGENDEPS := $(filter clean,$(MAKECMDGOALS))
override PKGDIR = configPkg
XDCINCS = -I. -I$(strip $(subst ;, -I,$(subst $(space),\$(space),$(XPKGPATH))))
XDCCFGDIR = package/cfg/

#
# The following dependencies ensure package.mak is rebuilt
# in the event that some included BOM script changes.
#
ifneq (clean,$(MAKECMDGOALS))
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/utils.js:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/utils.js
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/xdc.tci:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/xdc.tci
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/template.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/template.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/om2.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/om2.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/xmlgen.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/xmlgen.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/xmlgen2.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/xmlgen2.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/Warnings.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/Warnings.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/IPackage.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/IPackage.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/package.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/package.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/services/global/Clock.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/services/global/Clock.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/services/global/Trace.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/services/global/Trace.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/bld.js:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/bld.js
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/BuildEnvironment.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/BuildEnvironment.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/PackageContents.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/PackageContents.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/_gen.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/_gen.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/Library.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/Library.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/Executable.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/Executable.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/Repository.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/Repository.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/Configuration.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/Configuration.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/Script.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/Script.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/Manifest.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/Manifest.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/Utils.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/Utils.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/ITarget.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/ITarget.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/ITarget2.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/ITarget2.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/ITarget3.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/ITarget3.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/ITargetFilter.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/ITargetFilter.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/package.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/bld/package.xs
package.mak: config.bld
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/ITarget.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/ITarget.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/_utils.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/_utils.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/Linux86.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/Linux86.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/Mingw.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/Mingw.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/package.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/package.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/ITarget.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/ITarget.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/GCArmv6.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/GCArmv6.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/GCArmv7A.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/GCArmv7A.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/IM.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/IM.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/M3.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/M3.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/M4.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/M4.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/M4F.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/M4F.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/A8F.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/A8F.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/A9F.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/A9F.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/A15F.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/A15F.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/A53F.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/A53F.xs
/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/package.xs:
package.mak: /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/package.xs
package.mak: package.bld
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/tools/configuro/template/compiler.opt.xdt:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/tools/configuro/template/compiler.opt.xdt
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/services/io/File.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/services/io/File.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/services/io/package.xs:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/services/io/package.xs
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/tools/configuro/template/compiler.defs.xdt:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/tools/configuro/template/compiler.defs.xdt
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/tools/configuro/template/custom.mak.exe.xdt:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/tools/configuro/template/custom.mak.exe.xdt
/home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/tools/configuro/template/package.xs.xdt:
package.mak: /home/robertcabral/ti/xdctools_3_50_03_33_core/packages/xdc/tools/configuro/template/package.xs.xdt
endif

gnu.targets.arm.A8F.rootDir ?= /home/robertcabral/ti/gcc-arm-none-eabi-6-2017-q1-update
gnu.targets.arm.packageBase ?= /home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm/
.PRECIOUS: $(XDCCFGDIR)/%.oa8fg
.PHONY: all,a8fg .dlls,a8fg .executables,a8fg test,a8fg
all,a8fg: .executables,a8fg
.executables,a8fg: .libraries,a8fg
.executables,a8fg: .dlls,a8fg
.dlls,a8fg: .libraries,a8fg
.libraries,a8fg: .interfaces
	@$(RM) $@
	@$(TOUCH) "$@"

.help::
	@$(ECHO) xdc test,a8fg
	@$(ECHO) xdc .executables,a8fg
	@$(ECHO) xdc .libraries,a8fg
	@$(ECHO) xdc .dlls,a8fg


all: .executables 
.executables: .libraries .dlls
.libraries: .interfaces

PKGCFGS := $(wildcard package.xs) package/build.cfg
.interfaces: package/package.xdc.inc package/package.defs.h package.xdc $(PKGCFGS)

-include package/package.xdc.dep
package/%.xdc.inc package/%_configPkg.c package/%.defs.h: %.xdc $(PKGCFGS)
	@$(MSG) generating interfaces for package configPkg" (because $@ is older than $(firstword $?))" ...
	$(XSRUN) -f xdc/services/intern/cmd/build.xs $(MK_IDLOPTS) -m package/package.xdc.dep -i package/package.xdc.inc package.xdc

.dlls,a8fg .dlls: am335x_app_bbbam335x.pa8fg

-include package/cfg/am335x_app_bbbam335x_pa8fg.mak
-include package/cfg/am335x_app_bbbam335x_pa8fg.cfg.mak
ifeq (,$(MK_NOGENDEPS))
-include package/cfg/am335x_app_bbbam335x_pa8fg.dep
endif
am335x_app_bbbam335x.pa8fg: package/cfg/am335x_app_bbbam335x_pa8fg.xdl
	@


ifeq (,$(wildcard .libraries,a8fg))
am335x_app_bbbam335x.pa8fg package/cfg/am335x_app_bbbam335x_pa8fg.c: .libraries,a8fg
endif

package/cfg/am335x_app_bbbam335x_pa8fg.c package/cfg/am335x_app_bbbam335x_pa8fg.h package/cfg/am335x_app_bbbam335x_pa8fg.xdl: override _PROG_NAME := am335x_app_bbbam335x.xa8fg
package/cfg/am335x_app_bbbam335x_pa8fg.c: package/cfg/am335x_app_bbbam335x_pa8fg.cfg
package/cfg/am335x_app_bbbam335x_pa8fg.xdc.inc: package/cfg/am335x_app_bbbam335x_pa8fg.xdl
package/cfg/am335x_app_bbbam335x_pa8fg.xdl package/cfg/am335x_app_bbbam335x_pa8fg.c: .interfaces

clean:: clean,a8fg
	-$(RM) package/cfg/am335x_app_bbbam335x_pa8fg.cfg
	-$(RM) package/cfg/am335x_app_bbbam335x_pa8fg.dep
	-$(RM) package/cfg/am335x_app_bbbam335x_pa8fg.c
	-$(RM) package/cfg/am335x_app_bbbam335x_pa8fg.xdc.inc

clean,a8fg::
	-$(RM) am335x_app_bbbam335x.pa8fg
.executables,a8fg .executables: am335x_app_bbbam335x.xa8fg

am335x_app_bbbam335x.xa8fg: |am335x_app_bbbam335x.pa8fg

-include package/cfg/am335x_app_bbbam335x.xa8fg.mak
am335x_app_bbbam335x.xa8fg: package/cfg/am335x_app_bbbam335x_pa8fg.oa8fg 
	$(RM) $@
	@$(MSG) lnka8fg $@ ...
	$(RM) $(XDCCFGDIR)$@.map
	$(gnu.targets.arm.A8F.rootDir)/bin/arm-none-eabi-gcc -mfloat-abi=hard -nostartfiles -Wl,-static -Wl,--gc-sections -g  -L/home/robertcabral/ti/bios_6_52_00_12/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/lib/hard  -o $@ package/cfg/am335x_app_bbbam335x_pa8fg.oa8fg -Wl,-T,package/cfg/am335x_app_bbbam335x_pa8fg.xdl   -Wl,--start-group -lgcc -lc -lm -Wl,--end-group --specs=nano.specs -Wl,-Map=$(XDCCFGDIR)/$@.map -Wl,--start-group -lnosys -Wl,--end-group
	
am335x_app_bbbam335x.xa8fg: export LD_LIBRARY_PATH=

am335x_app_bbbam335x.test test,a8fg test: am335x_app_bbbam335x.xa8fg.test

am335x_app_bbbam335x.xa8fg.test:: am335x_app_bbbam335x.xa8fg
ifeq (,$(_TESTLEVEL))
	@$(MAKE) -R -r --no-print-directory -f $(XDCROOT)/packages/xdc/bld/xdc.mak _TESTLEVEL=1 am335x_app_bbbam335x.xa8fg.test
else
	@$(MSG) running $<  ...
	$(call EXEC.am335x_app_bbbam335x.xa8fg, ) 
endif

clean,a8fg::
	-$(RM) $(wildcard .tmp,am335x_app_bbbam335x.xa8fg,*)


clean:: clean,a8fg

clean,a8fg::
	-$(RM) am335x_app_bbbam335x.xa8fg
%,copy:
	@$(if $<,,$(MSG) don\'t know how to build $*; exit 1)
	@$(MSG) cp $< $@
	$(RM) $@
	$(CP) $< $@
am335x_app_bbbam335x_pa8fg.oa8fg,copy : package/cfg/am335x_app_bbbam335x_pa8fg.oa8fg
am335x_app_bbbam335x_pa8fg.sa8fg,copy : package/cfg/am335x_app_bbbam335x_pa8fg.sa8fg

$(XDCCFGDIR)%.c $(XDCCFGDIR)%.h $(XDCCFGDIR)%.xdl: $(XDCCFGDIR)%.cfg $(XDCROOT)/packages/xdc/cfg/Main.xs | .interfaces
	@$(MSG) "configuring $(_PROG_NAME) from $< ..."
	$(CONFIG) $(_PROG_XSOPTS) xdc.cfg $(_PROG_NAME) $(XDCCFGDIR)$*.cfg $(XDCCFGDIR)$*

.PHONY: release,configPkg
ifeq (,$(MK_NOGENDEPS))
-include package/rel/configPkg.tar.dep
endif
package/rel/configPkg/configPkg/package/package.rel.xml: package/package.bld.xml
package/rel/configPkg/configPkg/package/package.rel.xml: package/build.cfg
package/rel/configPkg/configPkg/package/package.rel.xml: package/package.xdc.inc
package/rel/configPkg/configPkg/package/package.rel.xml: .force
	@$(MSG) generating external release references $@ ...
	$(XS) $(JSENV) -f $(XDCROOT)/packages/xdc/bld/rel.js $(MK_RELOPTS) . $@

configPkg.tar: package/rel/configPkg.xdc.inc package/rel/configPkg/configPkg/package/package.rel.xml
	@$(MSG) making release file $@ "(because of $(firstword $?))" ...
	-$(RM) $@
	$(call MKRELTAR,package/rel/configPkg.xdc.inc,package/rel/configPkg.tar.dep)


release release,configPkg: all configPkg.tar
clean:: .clean
	-$(RM) configPkg.tar
	-$(RM) package/rel/configPkg.xdc.inc
	-$(RM) package/rel/configPkg.tar.dep

clean:: .clean
	-$(RM) .libraries $(wildcard .libraries,*)
clean:: 
	-$(RM) .dlls $(wildcard .dlls,*)
#
# The following clean rule removes user specified
# generated files or directories.
#

ifneq (clean,$(MAKECMDGOALS))
ifeq (,$(wildcard package))
    $(shell $(MKDIR) package)
endif
ifeq (,$(wildcard package/cfg))
    $(shell $(MKDIR) package/cfg)
endif
ifeq (,$(wildcard package/lib))
    $(shell $(MKDIR) package/lib)
endif
ifeq (,$(wildcard package/rel))
    $(shell $(MKDIR) package/rel)
endif
ifeq (,$(wildcard package/internal))
    $(shell $(MKDIR) package/internal)
endif
endif
clean::
	-$(RMDIR) package

include custom.mak
