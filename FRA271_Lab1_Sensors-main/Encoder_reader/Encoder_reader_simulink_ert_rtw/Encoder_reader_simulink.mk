###########################################################################
## Makefile generated for component 'Encoder_reader_simulink'. 
## 
## Makefile     : Encoder_reader_simulink.mk
## Generated on : Mon Oct 27 15:46:58 2025
## Final product: $(RELATIVE_PATH_TO_ANCHOR)/Encoder_reader_simulink.elf
## Product type : executable
## 
###########################################################################

###########################################################################
## MACROS
###########################################################################

# Macro Descriptions:
# PRODUCT_NAME            Name of the system to build
# MAKEFILE                Name of this makefile
# COMPILER_COMMAND_FILE   Compiler command listing model reference header paths
# CMD_FILE                Command file

PRODUCT_NAME              = Encoder_reader_simulink
MAKEFILE                  = Encoder_reader_simulink.mk
MATLAB_ROOT               = C:/PROGRA~1/MATLAB/R2025a
MATLAB_BIN                = C:/PROGRA~1/MATLAB/R2025a/bin
MATLAB_ARCH_BIN           = $(MATLAB_BIN)/win64
START_DIR                 = C:/Users/putth/Desktop/RMX/Lab/FRA271_Lab1_Sensors-main/Eicciw_code
SOLVER                    = 
SOLVER_OBJ                = 
CLASSIC_INTERFACE         = 0
TGT_FCN_LIB               = ISO_C
MODEL_HAS_DYNAMICALLY_LOADED_SFCNS = 0
RELATIVE_PATH_TO_ANCHOR   = ..
COMPILER_COMMAND_FILE     = Encoder_reader_simulink_comp.rsp
CMD_FILE                  = Encoder_reader_simulink.rsp
C_STANDARD_OPTS           = 
CPP_STANDARD_OPTS         = 

###########################################################################
## TOOLCHAIN SPECIFICATIONS
###########################################################################

# Toolchain Name:          GNU Tools for ARM Embedded Processors
# Supported Version(s):    
# ToolchainInfo Version:   2025a
# Specification Revision:  1.0
# 
#-------------------------------------------
# Macros assumed to be defined elsewhere
#-------------------------------------------

# TARGET_LOAD_CMD_ARGS
# TARGET_LOAD_CMD
# MW_GNU_ARM_TOOLS_PATH
# FDATASECTIONS_FLG

#-----------
# MACROS
#-----------

LIBGCC                    = ${shell $(MW_GNU_ARM_TOOLS_PATH)/arm-none-eabi-gcc ${CFLAGS} -print-libgcc-file-name}
LIBC                      = ${shell $(MW_GNU_ARM_TOOLS_PATH)/arm-none-eabi-gcc ${CFLAGS} -print-file-name=libc.a}
LIBM                      = ${shell $(MW_GNU_ARM_TOOLS_PATH)/arm-none-eabi-gcc ${CFLAGS} -print-file-name=libm.a}
PRODUCT_NAME_WITHOUT_EXTN = $(basename $(PRODUCT))
PRODUCT_BIN               = $(PRODUCT_NAME_WITHOUT_EXTN).bin
PRODUCT_HEX               = $(PRODUCT_NAME_WITHOUT_EXTN).hex
CPFLAGS                   = -O binary
SHELL                     = %SystemRoot%/system32/cmd.exe

TOOLCHAIN_SRCS = 
TOOLCHAIN_INCS = 
TOOLCHAIN_LIBS = -lm

#------------------------
# BUILD TOOL COMMANDS
#------------------------

# Assembler: GNU ARM Assembler
AS_PATH = $(MW_GNU_ARM_TOOLS_PATH)
AS = "$(AS_PATH)/arm-none-eabi-gcc"

# C Compiler: GNU ARM C Compiler
CC_PATH = $(MW_GNU_ARM_TOOLS_PATH)
CC = "$(CC_PATH)/arm-none-eabi-gcc"

# Linker: GNU ARM Linker
LD_PATH = $(MW_GNU_ARM_TOOLS_PATH)
LD = "$(LD_PATH)/arm-none-eabi-g++"

# C++ Compiler: GNU ARM C++ Compiler
CPP_PATH = $(MW_GNU_ARM_TOOLS_PATH)
CPP = "$(CPP_PATH)/arm-none-eabi-g++"

# C++ Linker: GNU ARM C++ Linker
CPP_LD_PATH = $(MW_GNU_ARM_TOOLS_PATH)
CPP_LD = "$(CPP_LD_PATH)/arm-none-eabi-g++"

# Archiver: GNU ARM Archiver
AR_PATH = $(MW_GNU_ARM_TOOLS_PATH)
AR = "$(AR_PATH)/arm-none-eabi-ar"

# MEX Tool: MEX Tool
MEX_PATH = $(MATLAB_ARCH_BIN)
MEX = "$(MEX_PATH)/mex"

# Binary Converter: Binary Converter
OBJCOPYPATH = $(MW_GNU_ARM_TOOLS_PATH)
OBJCOPY = "$(OBJCOPYPATH)/arm-none-eabi-objcopy"

# Hex Converter: Hex Converter
OBJCOPYPATH = $(MW_GNU_ARM_TOOLS_PATH)
OBJCOPY = "$(OBJCOPYPATH)/arm-none-eabi-objcopy"

# Executable Size: Executable Size
EXESIZEPATH = $(MW_GNU_ARM_TOOLS_PATH)
EXESIZE = "$(EXESIZEPATH)/arm-none-eabi-size"

# Download: Download
DOWNLOAD =

# Execute: Execute
EXECUTE = $(PRODUCT)

# Builder: GMAKE Utility
MAKE_PATH = %MATLAB%\bin\win64
MAKE = "$(MAKE_PATH)/gmake"


#-------------------------
# Directives/Utilities
#-------------------------

ASDEBUG             = -g
AS_OUTPUT_FLAG      = -o
CDEBUG              = -g
C_OUTPUT_FLAG       = -o
LDDEBUG             = -g
OUTPUT_FLAG         = -o
CPPDEBUG            = -g
CPP_OUTPUT_FLAG     = -o
CPPLDDEBUG          = -g
OUTPUT_FLAG         = -o
ARDEBUG             =
STATICLIB_OUTPUT_FLAG =
MEX_DEBUG           = -g
RM                  = @del /f/q
ECHO                = @echo
MV                  = @move
RUN                 =

#----------------------------------------
# "Faster Builds" Build Configuration
#----------------------------------------

MEX_CPPFLAGS         =
MEX_CPPLDFLAGS       =
MEX_CFLAGS           =
MEX_LDFLAGS          =



#---------------------------
# Model-Specific Options
#---------------------------

ASFLAGS = -MMD -MP -MF"$(@:%.s.o=%.s.dep)" -MT"$@"  -Wall -x assembler-with-cpp $(ASFLAGS_ADDITIONAL) $(DEFINES) $(INCLUDES) -c

CFLAGS = $(FDATASECTIONS_FLG) -Wall -c -MMD -MP -MF"$(@:%.c.o=%.c.dep)" -MT"$@"  -O0 -g

LDFLAGS = -Wl,--gc-sections -Wl,-Map="$(PRODUCT_NAME).map" -g

SHAREDLIB_LDFLAGS = -g

CPPFLAGS = -std=gnu++14 -fno-rtti -fno-exceptions $(FDATASECTIONS_FLG) -Wall -c -MMD -MP -MF"$(@:%.cpp.o=%.cpp.dep)" -MT"$@"  -O0 -g

CPP_LDFLAGS = -Wl,--gc-sections -Wl,-Map="$(PRODUCT_NAME).map" -g

CPP_SHAREDLIB_LDFLAGS = -g

ARFLAGS = ruvs

OBJCOPYFLAGS_BIN = -O binary $(PRODUCT) $(PRODUCT_BIN)

OBJCOPYFLAGS_HEX = -O ihex $(PRODUCT) $(PRODUCT_HEX)

EXESIZE_FLAGS = $(PRODUCT)

DOWNLOAD_FLAGS = 

EXECUTE_FLAGS = 

MAKE_FLAGS = -f $(MAKEFILE)

###########################################################################
## OUTPUT INFO
###########################################################################

PRODUCT = $(RELATIVE_PATH_TO_ANCHOR)/Encoder_reader_simulink.elf
PRODUCT_TYPE = "executable"
BUILD_TYPE = "Top-Level Standalone Executable"

###########################################################################
## INCLUDE PATHS
###########################################################################

INCLUDES_BUILDINFO = 

INCLUDES = $(INCLUDES_BUILDINFO)

###########################################################################
## DEFINES
###########################################################################

DEFINES_ = -DMW_TIM3_ENCODER_VAR=mw_tim3 -D__MW_TARGET_USE_HARDWARE_RESOURCES_H__ -DUSE_FULL_LL_DRIVER -DSTM32G474xx -DUSE_HAL_DRIVER -DMW_TIMEBASESOURCE=TIM2 -DMW_CONNECTIVITY_UART=LPUART1_BASE -DMW_CONNECTIVITY_RX_DMA=DMA1 -DMW_LPUART1_RX_DMA_STREAM=1 -DMW_LPUART1_RX_DMA_ENABLED=DMA1_Channel1_IRQHandler -DMW_CONNECTIVITY_RX_DMAStream=LL_DMA_CHANNEL_1 -DMW_CONNECTIVITY_RX_BUFFER=GET_LPUART1_RECEIVE_BUFFER -DMW_LPUART1_RECEIVE_BUFFER_SIZE=1024 -DMW_LPUART1_ENABLED=1 -DMW_GPIO_BIT_SHIFT=0 -DMW_CubeMXVersion_6.15.0
DEFINES_BUILD_ARGS = -DCLASSIC_INTERFACE=0 -DALLOCATIONFCN=0 -DTERMFCN=1 -DONESTEPFCN=1 -DMAT_FILE=0 -DMULTI_INSTANCE_CODE=0 -DEXT_MODE=1 -DINTEGER_CODE=0 -DMT=0
DEFINES_CUSTOM = 
DEFINES_OPTS = -DXCP_DAQ_SUPPORT -DXCP_CALIBRATION_SUPPORT -DXCP_TIMESTAMP_SUPPORT -DXCP_SET_MTA_SUPPORT -DEXTMODE_XCP_TRIGGER_SUPPORT -DINTERNAL_XCP_MEM_BLOCK_1_SIZE=128 -DINTERNAL_XCP_MEM_BLOCK_1_NUMBER=1 -DINTERNAL_XCP_MEM_BLOCK_2_SIZE=168 -DINTERNAL_XCP_MEM_BLOCK_2_NUMBER=4 -DINTERNAL_XCP_MEM_BLOCK_3_SIZE=88 -DINTERNAL_XCP_MEM_BLOCK_3_NUMBER=4 -DINTERNAL_XCP_MEM_RESERVED_POOLS_TOTAL_SIZE=3010 -DINTERNAL_XCP_MEM_RESERVED_POOLS_NUMBER=5 -DXCP_MEM_DAQ_RESERVED_POOL_BLOCKS_NUMBER=3 -DXCP_MEM_DAQ_RESERVED_POOLS_NUMBER=1 -DXCP_MIN_EVENT_NO_RESERVED_POOL=2 -DXCP_MAX_CTO_SIZE=255 -DXCP_MAX_DTO_SIZE=65532 -DXCP_MAX_ODT_ENTRY_SIZE=255 -DEXTMODE_STATIC -DEXTMODE_STATIC_SIZE=2048 -DON_TARGET_WAIT_FOR_START=1 -DTID01EQ=1
DEFINES_SKIPFORSIL = -DXCP_CUSTOM_PLATFORM -D__FPU_PRESENT=1U -D__FPU_USED=1U -DEXTMODE_DISABLE_ARGS_PROCESSING -DSTACK_SIZE=512 -DRT
DEFINES_STANDARD = -DMODEL=Encoder_reader_simulink -DNUMST=2 -DNCSTATES=0 -DHAVESTDIO -DMODEL_HAS_DYNAMICALLY_LOADED_SFCNS=0
DEFINES_STM32DEVICEDRIVERBLOCKS = -DMW_TIM3_ENABLED=1

DEFINES = $(DEFINES_) $(DEFINES_BUILD_ARGS) $(DEFINES_CUSTOM) $(DEFINES_OPTS) $(DEFINES_SKIPFORSIL) $(DEFINES_STANDARD) $(DEFINES_STM32DEVICEDRIVERBLOCKS)

###########################################################################
## SOURCE FILES
###########################################################################

SRCS = $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/ext_mode/src/xcp_ext_mode.c $(START_DIR)/Encoder_reader_simulink_ert_rtw/Encoder_reader_simulink.c $(START_DIR)/Encoder_reader_simulink_ert_rtw/rtGetInf.c $(START_DIR)/Encoder_reader_simulink_ert_rtw/rt_nonfinite.c $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/ext_mode/src/xcp_ext_common.c $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/ext_mode/src/xcp_ext_classic_trigger.c $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/protocol/src/xcp.c $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/protocol/src/xcp_standard.c $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/protocol/src/xcp_daq.c $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/protocol/src/xcp_calibration.c $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/transport/src/xcp_fifo.c $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/transport/src/xcp_transport.c $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/platform/default/xcp_mem_default.c $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/platform/default/xcp_drv_rtiostream.c $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/common/xcp_utils.c $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/transport/src/xcp_frame_serial.c $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/ext_mode/src/xcp_ext_param_default_serial.c C:/ProgramData/MATLAB/SupportPackages/R2025a/toolbox/shared/supportpackages/stm32/src/overrideHALDelay.c C:/ProgramData/MATLAB/SupportPackages/R2025a/toolbox/shared/supportpackages/stm32/src/platform_timer.c $(MATLAB_ROOT)/toolbox/target/shared/armcortexmbase/scheduler/src/SysTickScheduler.c $(MATLAB_ROOT)/toolbox/target/shared/armcortexmbase/scheduler/src/m3m4m4f_multitasking.c C:/ProgramData/MATLAB/SupportPackages/R2025a/toolbox/shared/supportpackages/stm32/src/rtiostream_serial.c C:/ProgramData/MATLAB/SupportPackages/R2025a/toolbox/shared/supportpackages/stm32/src/stm_usart.c C:/ProgramData/MATLAB/SupportPackages/R2025a/toolbox/shared/supportpackages/stm32/src/stm_lpuart.c C:/ProgramData/MATLAB/SupportPackages/R2025a/toolbox/shared/supportpackages/stm32/src/sys_arch_arm.c $(START_DIR)/Core/Src/main.c $(START_DIR)/Core/Src/stm32g4xx_it.c $(START_DIR)/Core/Src/stm32g4xx_hal_msp.c $(START_DIR)/Core/Src/stm32g4xx_hal_timebase_tim.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_utils.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_exti.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_tim.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_tim_ex.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_gpio.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_dma.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_lpuart.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_rcc.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_pwr.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_rcc.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_rcc_ex.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_flash.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_flash_ex.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_flash_ramfunc.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_gpio.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_exti.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_dma.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_dma_ex.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr_ex.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_cortex.c $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_tim.c $(START_DIR)/Core/Src/system_stm32g4xx.c $(START_DIR)/STM32CubeIDE/Application/User/Core/syscalls.c $(START_DIR)/STM32CubeIDE/Application/User/Core/sysmem.c $(START_DIR)/STM32CubeIDE/Application/User/Startup/startup_stm32g474retx.s C:/ProgramData/MATLAB/SupportPackages/R2025a/toolbox/shared/supportpackages/stm32/src/stm_timer_ll.c

MAIN_SRC = $(START_DIR)/Encoder_reader_simulink_ert_rtw/ert_main.c

ALL_SRCS = $(SRCS) $(MAIN_SRC)

###########################################################################
## OBJECTS
###########################################################################

OBJS = xcp_ext_mode.c.o Encoder_reader_simulink.c.o rtGetInf.c.o rt_nonfinite.c.o xcp_ext_common.c.o xcp_ext_classic_trigger.c.o xcp.c.o xcp_standard.c.o xcp_daq.c.o xcp_calibration.c.o xcp_fifo.c.o xcp_transport.c.o xcp_mem_default.c.o xcp_drv_rtiostream.c.o xcp_utils.c.o xcp_frame_serial.c.o xcp_ext_param_default_serial.c.o overrideHALDelay.c.o platform_timer.c.o SysTickScheduler.c.o m3m4m4f_multitasking.c.o rtiostream_serial.c.o stm_usart.c.o stm_lpuart.c.o sys_arch_arm.c.o main.c.o stm32g4xx_it.c.o stm32g4xx_hal_msp.c.o stm32g4xx_hal_timebase_tim.c.o stm32g4xx_ll_utils.c.o stm32g4xx_ll_exti.c.o stm32g4xx_hal_tim.c.o stm32g4xx_hal_tim_ex.c.o stm32g4xx_ll_gpio.c.o stm32g4xx_ll_dma.c.o stm32g4xx_ll_lpuart.c.o stm32g4xx_ll_rcc.c.o stm32g4xx_ll_pwr.c.o stm32g4xx_hal.c.o stm32g4xx_hal_rcc.c.o stm32g4xx_hal_rcc_ex.c.o stm32g4xx_hal_flash.c.o stm32g4xx_hal_flash_ex.c.o stm32g4xx_hal_flash_ramfunc.c.o stm32g4xx_hal_gpio.c.o stm32g4xx_hal_exti.c.o stm32g4xx_hal_dma.c.o stm32g4xx_hal_dma_ex.c.o stm32g4xx_hal_pwr.c.o stm32g4xx_hal_pwr_ex.c.o stm32g4xx_hal_cortex.c.o stm32g4xx_ll_tim.c.o system_stm32g4xx.c.o syscalls.c.o sysmem.c.o startup_stm32g474retx.s.o stm_timer_ll.c.o

MAIN_OBJ = ert_main.c.o

ALL_OBJS = $(OBJS) $(MAIN_OBJ)

###########################################################################
## PREBUILT OBJECT FILES
###########################################################################

PREBUILT_OBJS = 

###########################################################################
## LIBRARIES
###########################################################################

LIBS = C:/ProgramData/MATLAB/SupportPackages/R2025a/3P.instrset/cmsis_dsp.instrset/Lib/GCC/arm_cortexm4ldfsp_math/libCMSISDSP.a C:/ProgramData/MATLAB/SupportPackages/R2025a/toolbox/shared/supportpackages/stm32/lib/GCC/libmw_pdmfilter_m4_spfp.lib

###########################################################################
## SYSTEM LIBRARIES
###########################################################################

SYSTEM_LIBS = 

###########################################################################
## ADDITIONAL TOOLCHAIN FLAGS
###########################################################################

#---------------
# C Compiler
#---------------

CFLAGS_SKIPFORSIL = -mcpu=cortex-m4 -mthumb -mlittle-endian -mthumb-interwork -mfpu=fpv4-sp-d16 -mfloat-abi=hard -ffp-contract=fast
CFLAGS_BASIC = $(DEFINES) $(INCLUDES) @$(COMPILER_COMMAND_FILE)

CFLAGS += $(CFLAGS_SKIPFORSIL) $(CFLAGS_BASIC)

#-----------
# Linker
#-----------

LDFLAGS_SKIPFORSIL = -mcpu=cortex-m4 -mthumb -mlittle-endian -mthumb-interwork -mfpu=fpv4-sp-d16 -mfloat-abi=hard --entry Reset_Handler --specs=nosys.specs  -T "C:\Users\putth\Desktop\RMX\Lab\FRA271_Lab1_Sensors-main\Eicciw_code\STM32CubeIDE\STM32G474RETX_FLASH.ld" --specs=nano.specs

LDFLAGS += $(LDFLAGS_SKIPFORSIL)

#--------------------------
# Shared Library Linker
#--------------------------

SHAREDLIB_LDFLAGS_SKIPFORSIL = -mcpu=cortex-m4 -mthumb -mlittle-endian -mthumb-interwork -mfpu=fpv4-sp-d16 -mfloat-abi=hard --entry Reset_Handler --specs=nosys.specs  -T "C:\Users\putth\Desktop\RMX\Lab\FRA271_Lab1_Sensors-main\Eicciw_code\STM32CubeIDE\STM32G474RETX_FLASH.ld" --specs=nano.specs

SHAREDLIB_LDFLAGS += $(SHAREDLIB_LDFLAGS_SKIPFORSIL)

#-----------------
# C++ Compiler
#-----------------

CPPFLAGS_SKIPFORSIL = -mcpu=cortex-m4 -mthumb -mlittle-endian -mthumb-interwork -mfpu=fpv4-sp-d16 -mfloat-abi=hard -ffp-contract=fast
CPPFLAGS_BASIC = $(DEFINES) $(INCLUDES) @$(COMPILER_COMMAND_FILE)

CPPFLAGS += $(CPPFLAGS_SKIPFORSIL) $(CPPFLAGS_BASIC)

#---------------
# C++ Linker
#---------------

CPP_LDFLAGS_SKIPFORSIL = -mcpu=cortex-m4 -mthumb -mlittle-endian -mthumb-interwork -mfpu=fpv4-sp-d16 -mfloat-abi=hard --entry Reset_Handler --specs=nosys.specs  -T "C:\Users\putth\Desktop\RMX\Lab\FRA271_Lab1_Sensors-main\Eicciw_code\STM32CubeIDE\STM32G474RETX_FLASH.ld" --specs=nano.specs

CPP_LDFLAGS += $(CPP_LDFLAGS_SKIPFORSIL)

#------------------------------
# C++ Shared Library Linker
#------------------------------

CPP_SHAREDLIB_LDFLAGS_SKIPFORSIL = -mcpu=cortex-m4 -mthumb -mlittle-endian -mthumb-interwork -mfpu=fpv4-sp-d16 -mfloat-abi=hard --entry Reset_Handler --specs=nosys.specs  -T "C:\Users\putth\Desktop\RMX\Lab\FRA271_Lab1_Sensors-main\Eicciw_code\STM32CubeIDE\STM32G474RETX_FLASH.ld" --specs=nano.specs

CPP_SHAREDLIB_LDFLAGS += $(CPP_SHAREDLIB_LDFLAGS_SKIPFORSIL)

###########################################################################
## INLINED COMMANDS
###########################################################################


ALL_DEPS:=$(patsubst %.o,%.dep,$(ALL_OBJS))
all:

ifndef DISABLE_GCC_FUNCTION_DATA_SECTIONS
FDATASECTIONS_FLG := -ffunction-sections -fdata-sections
endif



-include codertarget_assembly_flags.mk
-include ../codertarget_assembly_flags.mk
-include ../../codertarget_assembly_flags.mk
-include mw_gnu_arm_tools_path.mk
-include ../mw_gnu_arm_tools_path.mk
-include ../../mw_gnu_arm_tools_path.mk
-include $(ALL_DEPS)


###########################################################################
## PHONY TARGETS
###########################################################################

.PHONY : all build buildobj clean info prebuild postbuild download execute


all : build postbuild
	@echo "### Successfully generated all binary outputs."


build : prebuild $(PRODUCT)


buildobj : prebuild $(OBJS) $(PREBUILT_OBJS) $(LIBS)
	@echo "### Successfully generated all binary outputs."


prebuild : 


postbuild : $(PRODUCT)
	@echo "### Invoking postbuild tool "Binary Converter" ..."
	$(OBJCOPY) $(OBJCOPYFLAGS_BIN)
	@echo "### Done invoking postbuild tool."
	@echo "### Invoking postbuild tool "Hex Converter" ..."
	$(OBJCOPY) $(OBJCOPYFLAGS_HEX)
	@echo "### Done invoking postbuild tool."
	@echo "### Invoking postbuild tool "Executable Size" ..."
	$(EXESIZE) $(EXESIZE_FLAGS)
	@echo "### Done invoking postbuild tool."


download : postbuild


execute : download
	@echo "### Invoking postbuild tool "Execute" ..."
	$(EXECUTE) $(EXECUTE_FLAGS)
	@echo "### Done invoking postbuild tool."


###########################################################################
## FINAL TARGET
###########################################################################

#-------------------------------------------
# Create a standalone executable            
#-------------------------------------------

$(PRODUCT) : $(OBJS) $(PREBUILT_OBJS) $(LIBS) $(MAIN_OBJ)
	@echo "### Creating standalone executable "$(PRODUCT)" ..."
	$(LD) $(LDFLAGS) -o $(PRODUCT) @$(CMD_FILE) $(LIBS) $(SYSTEM_LIBS) $(TOOLCHAIN_LIBS)
	@echo "### Created: $(PRODUCT)"


###########################################################################
## INTERMEDIATE TARGETS
###########################################################################

#---------------------
# SOURCE-TO-OBJECT
#---------------------

%.c.o : %.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : %.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.s.o : %.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.cpp.o : %.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : %.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : %.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : %.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : $(RELATIVE_PATH_TO_ANCHOR)/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : $(RELATIVE_PATH_TO_ANCHOR)/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.s.o : $(RELATIVE_PATH_TO_ANCHOR)/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.cpp.o : $(RELATIVE_PATH_TO_ANCHOR)/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(RELATIVE_PATH_TO_ANCHOR)/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(RELATIVE_PATH_TO_ANCHOR)/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(RELATIVE_PATH_TO_ANCHOR)/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : $(START_DIR)/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : $(START_DIR)/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.s.o : $(START_DIR)/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.cpp.o : $(START_DIR)/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(START_DIR)/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(START_DIR)/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(START_DIR)/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : $(START_DIR)/Encoder_reader_simulink_ert_rtw/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : $(START_DIR)/Encoder_reader_simulink_ert_rtw/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.s.o : $(START_DIR)/Encoder_reader_simulink_ert_rtw/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.cpp.o : $(START_DIR)/Encoder_reader_simulink_ert_rtw/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(START_DIR)/Encoder_reader_simulink_ert_rtw/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(START_DIR)/Encoder_reader_simulink_ert_rtw/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(START_DIR)/Encoder_reader_simulink_ert_rtw/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : $(MATLAB_ROOT)/rtw/c/src/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/rtw/c/src/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/rtw/c/src/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/rtw/c/src/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/rtw/c/src/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/rtw/c/src/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/rtw/c/src/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : $(MATLAB_ROOT)/simulink/src/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/simulink/src/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/simulink/src/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/simulink/src/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/simulink/src/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/simulink/src/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/simulink/src/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/protocol/src/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/protocol/src/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/protocol/src/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/protocol/src/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/protocol/src/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/protocol/src/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/protocol/src/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/transport/src/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/transport/src/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/transport/src/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/transport/src/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/transport/src/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/transport/src/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/transport/src/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/ext_mode/src/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/ext_mode/src/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/ext_mode/src/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/ext_mode/src/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/ext_mode/src/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/ext_mode/src/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/ext_mode/src/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/common/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/common/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/common/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/common/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/common/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/common/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/common/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/platform/default/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/platform/default/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/platform/default/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/platform/default/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/platform/default/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/platform/default/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.cpp.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/platform/default/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xcp_ext_mode.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/ext_mode/src/xcp_ext_mode.c
	$(CC) $(CFLAGS) -o "$@" "$<"


Encoder_reader_simulink.c.o : $(START_DIR)/Encoder_reader_simulink_ert_rtw/Encoder_reader_simulink.c
	$(CC) $(CFLAGS) -o "$@" "$<"


ert_main.c.o : $(START_DIR)/Encoder_reader_simulink_ert_rtw/ert_main.c
	$(CC) $(CFLAGS) -o "$@" "$<"


rtGetInf.c.o : $(START_DIR)/Encoder_reader_simulink_ert_rtw/rtGetInf.c
	$(CC) $(CFLAGS) -o "$@" "$<"


rt_nonfinite.c.o : $(START_DIR)/Encoder_reader_simulink_ert_rtw/rt_nonfinite.c
	$(CC) $(CFLAGS) -o "$@" "$<"


xcp_ext_common.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/ext_mode/src/xcp_ext_common.c
	$(CC) $(CFLAGS) -o "$@" "$<"


xcp_ext_classic_trigger.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/ext_mode/src/xcp_ext_classic_trigger.c
	$(CC) $(CFLAGS) -o "$@" "$<"


xcp.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/protocol/src/xcp.c
	$(CC) $(CFLAGS) -o "$@" "$<"


xcp_standard.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/protocol/src/xcp_standard.c
	$(CC) $(CFLAGS) -o "$@" "$<"


xcp_daq.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/protocol/src/xcp_daq.c
	$(CC) $(CFLAGS) -o "$@" "$<"


xcp_calibration.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/protocol/src/xcp_calibration.c
	$(CC) $(CFLAGS) -o "$@" "$<"


xcp_fifo.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/transport/src/xcp_fifo.c
	$(CC) $(CFLAGS) -o "$@" "$<"


xcp_transport.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/transport/src/xcp_transport.c
	$(CC) $(CFLAGS) -o "$@" "$<"


xcp_mem_default.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/platform/default/xcp_mem_default.c
	$(CC) $(CFLAGS) -o "$@" "$<"


xcp_drv_rtiostream.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/platform/default/xcp_drv_rtiostream.c
	$(CC) $(CFLAGS) -o "$@" "$<"


xcp_utils.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/common/xcp_utils.c
	$(CC) $(CFLAGS) -o "$@" "$<"


xcp_frame_serial.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/server/transport/src/xcp_frame_serial.c
	$(CC) $(CFLAGS) -o "$@" "$<"


xcp_ext_param_default_serial.c.o : $(MATLAB_ROOT)/toolbox/coder/xcp/src/target/ext_mode/src/xcp_ext_param_default_serial.c
	$(CC) $(CFLAGS) -o "$@" "$<"


overrideHALDelay.c.o : C:/ProgramData/MATLAB/SupportPackages/R2025a/toolbox/shared/supportpackages/stm32/src/overrideHALDelay.c
	$(CC) $(CFLAGS) -o "$@" "$<"


platform_timer.c.o : C:/ProgramData/MATLAB/SupportPackages/R2025a/toolbox/shared/supportpackages/stm32/src/platform_timer.c
	$(CC) $(CFLAGS) -o "$@" "$<"


SysTickScheduler.c.o : $(MATLAB_ROOT)/toolbox/target/shared/armcortexmbase/scheduler/src/SysTickScheduler.c
	$(CC) $(CFLAGS) -o "$@" "$<"


m3m4m4f_multitasking.c.o : $(MATLAB_ROOT)/toolbox/target/shared/armcortexmbase/scheduler/src/m3m4m4f_multitasking.c
	$(CC) $(CFLAGS) -o "$@" "$<"


rtiostream_serial.c.o : C:/ProgramData/MATLAB/SupportPackages/R2025a/toolbox/shared/supportpackages/stm32/src/rtiostream_serial.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm_usart.c.o : C:/ProgramData/MATLAB/SupportPackages/R2025a/toolbox/shared/supportpackages/stm32/src/stm_usart.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm_lpuart.c.o : C:/ProgramData/MATLAB/SupportPackages/R2025a/toolbox/shared/supportpackages/stm32/src/stm_lpuart.c
	$(CC) $(CFLAGS) -o "$@" "$<"


sys_arch_arm.c.o : C:/ProgramData/MATLAB/SupportPackages/R2025a/toolbox/shared/supportpackages/stm32/src/sys_arch_arm.c
	$(CC) $(CFLAGS) -o "$@" "$<"


main.c.o : $(START_DIR)/Core/Src/main.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_it.c.o : $(START_DIR)/Core/Src/stm32g4xx_it.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_msp.c.o : $(START_DIR)/Core/Src/stm32g4xx_hal_msp.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_timebase_tim.c.o : $(START_DIR)/Core/Src/stm32g4xx_hal_timebase_tim.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_ll_utils.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_utils.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_ll_exti.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_exti.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_tim.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_tim.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_tim_ex.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_tim_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_ll_gpio.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_gpio.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_ll_dma.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_dma.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_ll_lpuart.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_lpuart.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_ll_rcc.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_rcc.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_ll_pwr.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_pwr.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_rcc.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_rcc.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_rcc_ex.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_rcc_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_flash.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_flash.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_flash_ex.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_flash_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_flash_ramfunc.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_flash_ramfunc.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_gpio.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_gpio.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_exti.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_exti.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_dma.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_dma.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_dma_ex.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_dma_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_pwr.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_pwr_ex.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_hal_cortex.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_cortex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32g4xx_ll_tim.c.o : $(START_DIR)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_tim.c
	$(CC) $(CFLAGS) -o "$@" "$<"


system_stm32g4xx.c.o : $(START_DIR)/Core/Src/system_stm32g4xx.c
	$(CC) $(CFLAGS) -o "$@" "$<"


syscalls.c.o : $(START_DIR)/STM32CubeIDE/Application/User/Core/syscalls.c
	$(CC) $(CFLAGS) -o "$@" "$<"


sysmem.c.o : $(START_DIR)/STM32CubeIDE/Application/User/Core/sysmem.c
	$(CC) $(CFLAGS) -o "$@" "$<"


startup_stm32g474retx.s.o : $(START_DIR)/STM32CubeIDE/Application/User/Startup/startup_stm32g474retx.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


stm_timer_ll.c.o : C:/ProgramData/MATLAB/SupportPackages/R2025a/toolbox/shared/supportpackages/stm32/src/stm_timer_ll.c
	$(CC) $(CFLAGS) -o "$@" "$<"


###########################################################################
## DEPENDENCIES
###########################################################################

$(ALL_OBJS) : rtw_proj.tmw $(COMPILER_COMMAND_FILE) $(MAKEFILE)


###########################################################################
## MISCELLANEOUS TARGETS
###########################################################################

info : 
	@echo "### PRODUCT = $(PRODUCT)"
	@echo "### PRODUCT_TYPE = $(PRODUCT_TYPE)"
	@echo "### BUILD_TYPE = $(BUILD_TYPE)"
	@echo "### INCLUDES = $(INCLUDES)"
	@echo "### DEFINES = $(DEFINES)"
	@echo "### ALL_SRCS = $(ALL_SRCS)"
	@echo "### ALL_OBJS = $(ALL_OBJS)"
	@echo "### LIBS = $(LIBS)"
	@echo "### MODELREF_LIBS = $(MODELREF_LIBS)"
	@echo "### SYSTEM_LIBS = $(SYSTEM_LIBS)"
	@echo "### TOOLCHAIN_LIBS = $(TOOLCHAIN_LIBS)"
	@echo "### ASFLAGS = $(ASFLAGS)"
	@echo "### CFLAGS = $(CFLAGS)"
	@echo "### LDFLAGS = $(LDFLAGS)"
	@echo "### SHAREDLIB_LDFLAGS = $(SHAREDLIB_LDFLAGS)"
	@echo "### CPPFLAGS = $(CPPFLAGS)"
	@echo "### CPP_LDFLAGS = $(CPP_LDFLAGS)"
	@echo "### CPP_SHAREDLIB_LDFLAGS = $(CPP_SHAREDLIB_LDFLAGS)"
	@echo "### ARFLAGS = $(ARFLAGS)"
	@echo "### MEX_CFLAGS = $(MEX_CFLAGS)"
	@echo "### MEX_CPPFLAGS = $(MEX_CPPFLAGS)"
	@echo "### MEX_LDFLAGS = $(MEX_LDFLAGS)"
	@echo "### MEX_CPPLDFLAGS = $(MEX_CPPLDFLAGS)"
	@echo "### OBJCOPYFLAGS_BIN = $(OBJCOPYFLAGS_BIN)"
	@echo "### OBJCOPYFLAGS_HEX = $(OBJCOPYFLAGS_HEX)"
	@echo "### EXESIZE_FLAGS = $(EXESIZE_FLAGS)"
	@echo "### DOWNLOAD_FLAGS = $(DOWNLOAD_FLAGS)"
	@echo "### EXECUTE_FLAGS = $(EXECUTE_FLAGS)"
	@echo "### MAKE_FLAGS = $(MAKE_FLAGS)"


clean : 
	$(ECHO) "### Deleting all derived files ..."
	$(RM) $(subst /,\,$(PRODUCT))
	$(RM) $(subst /,\,$(ALL_OBJS))
	$(RM) *.c.dep
	$(RM) *.cpp.dep
	$(RM) *.s.dep
	$(ECHO) "### Deleted all derived files."


