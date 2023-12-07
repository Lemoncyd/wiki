
BUILD_DIR = build
TARGET    = BK3432_BIM

AR = arm-none-eabi-gcc-ar
CC = arm-none-eabi-gcc

CCFLAGS  = -Os -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -ffunction-sections -fdata-sections
CCFLAGS += -flto -fno-strict-aliasing -fgnu89-inline -ffast-math -fmessage-length=0
CCFLAGS += -Wall

LKFLAGS  = -Os -mcpu=arm968e-s -mthumb -mthumb-interwork -flto -ffunction-sections -fdata-sections
LKFLAGS += -nostartfiles

CCFLAGS += -I./config \
      -I./app \
      -I../../libs \
      -I../../sdk/plactform/core_modules/src \
      -I../../sdk/plactform/arch \
      -I../../sdk/plactform/arch/compiler \
      -I../../sdk/plactform/arch/ll \
      -I../../sdk/plactform/core_modules/common/api \
      -I../../sdk/plactform/arch/boot \
      -I../../sdk/plactform/core_modules/dbg/api \
      -I../../sdk/plactform/core_modules/rf/api \
      -I../../sdk/plactform/core_modules/ecc_p256/api \
      -I../../sdk/plactform/arch/main \
      -I../../sdk/plactform/core_modules/util \
      -I../../sdk/plactform/driver/pwm \
      -I../../sdk/plactform/driver/adc \
      -I../../sdk/plactform/driver/audio \
      -I../../sdk/plactform/driver/wdt \
      -I../../sdk/plactform/driver/rtc \
      -I../../sdk/plactform/driver/i2c \
      -I../../sdk/plactform/driver/utc \
      -I../../sdk/plactform/driver/ir \
      -I../../sdk/plactform/driver/spi \
      -I../../sdk/plactform/driver/plf \
      -I../../sdk/plactform/driver/counter \
      -I../../sdk/plactform/driver/gpio \
      -I../../sdk/plactform/driver/intcntl \
      -I../../sdk/plactform/driver/icu \
      -I../../sdk/plactform/driver/intc \
      -I../../sdk/plactform/driver/flash \
      -I../../sdk/plactform/driver/timer \
      -I../../sdk/plactform/driver/reg \
      -I../../sdk/plactform/driver/uart \
      -I../../sdk/plactform/driver/emi \
      -I../../sdk/ble_stack/com/rwble \
      -I../../sdk/ble_stack/com/rwble_hl \
      -I../../sdk/ble_stack/com/rwble \
      -I../../sdk/ble_stack/com/rwip/api \
      -I../../sdk/ble_stack/com/rwble_hl \
      -I../../sdk/ble_stack/src \
      -I../../sdk/plactform/reg \
      -I../../sdk/plactform/driver/syscntl \
      -I../../sdk/plactform/rom/hci \
      -I../../sdk/plactform/core_modules/ecc_p256/api \
      -I../../sdk/ble_stack/inc \
      -I../../sdk/ble_stack/inc/hci \
      -I../../sdk/ble_stack/inc/h4tl \
      -I../../sdk/ble_stack/inc/ke \
      -I../../sdk/ble_stack/inc/nvds \
      -I../../sdk/ble_stack/inc/ea \
      -I../../sdk/ble_stack/inc/em \
      -I../../sdk/ble_stack/inc/ahi \
      -I../../sdk/ble_stack/inc/ble/hl/gap/gapc \
      -I../../sdk/ble_stack/inc/ble/hl/gap/gapm \
      -I../../sdk/ble_stack/inc/ble/hl/gap/smpc \
      -I../../sdk/ble_stack/inc/ble/hl/gap/smpm \
      -I../../sdk/ble_stack/inc/ble/hl/gatt/attc \
      -I../../sdk/ble_stack/inc/ble/hl/gatt/attm \
      -I../../sdk/ble_stack/inc/ble/hl/gatt/atts \
      -I../../sdk/ble_stack/inc/ble/hl/gatt/gattc \
      -I../../sdk/ble_stack/inc/ble/hl/gatt/gattm \
      -I../../sdk/ble_stack/inc/ble/hl/l2c/l2cc \
      -I../../sdk/ble_stack/inc/ble/hl/l2c/l2cm \
      -I../../sdk/ble_stack/inc/ble/ll/em \
      -I../../sdk/ble_stack/inc/ble/ll/llc \
      -I../../sdk/ble_stack/inc/ble/ll/lld \
      -I../../sdk/ble_stack/inc/ble/ll/llm \
      -I../../sdk/ble_stack/com/rwip/api \
      -I../../sdk/ble_stack/inc/ble/hl/gap \
      -I../../sdk/ble_stack/inc/ble/hl/gatt \
      -I../../sdk/ble_stack/com/prf \
      -I../../sdk/ble_stack/com/profiles/dis/diss/src \
      -I../../sdk/ble_stack/com/profiles/bas/bass/src \
      -I../../sdk/ble_stack/com/profiles/ancs/ancsc/api \
      -I../../sdk/ble_stack/com/profiles/ancs/ancsc/src \
      -I../../sdk/ble_stack/com/profiles/ancs \
      -I../../sdk/ble_stack/com/profiles/FCC0/api \
      -I../../sdk/ble_stack/com/profiles/FCC0/src \
      -I../../sdk/ble_stack/com/profiles/FCC0/util \
      -I../../sdk/ble_stack/com/profiles/FEE0/api \
      -I../../sdk/ble_stack/com/profiles/FEE0/src \
      -I../../sdk/ble_stack/com/profiles/hogp \
      -I../../sdk/ble_stack/com/profiles/hogp/hogpd/api \
      -I../../sdk/ble_stack/com/profiles/hogp/hogpd/src \
      -I../../libs \
      -I../../sdk/ble_stack/com/profiles/wechat/api \
      -I../../sdk/ble_stack/com/profiles/wechat/src \
      -I./wechat \
      -I../../sdk/ble_stack/com/profiles/bas/bass \
      -I../../sdk/ble_stack/com/profiles/bas/bass/api \
      -I../../sdk/ble_stack/com/profiles/dis/diss \
      -I../../sdk/ble_stack/com/profiles/dis/diss/api \
      -I../../sdk/ble_stack/com/profiles/FFF0/api \
      -I../../sdk/ble_stack/com/profiles/FFF0 \
      -I../../sdk/ble_stack/com/profiles/oad/api

LKFLAGS += $(LIB_INCS)
LKFLAGS += -T./lnk/link_bim.lds
LKLIBS  += 

ASMS = app/startup_bim.S
SRCS = app/bim_app.c \
       app/bim_flash.c \
       app/bim_intc.c \
       app/bim_uart.c \
       app/bim_updataImage.c

OBJS := $(SRCS:%.c=$(BUILD_DIR)/%.o)
OBJS += $(SRC1:%.c=$(BUILD_DIR)/dd1/%.o)
OBJS += $(SRC2:%.c=$(BUILD_DIR)/dd2/%.o)
OBJS += $(ASMS:%.S=$(BUILD_DIR)/%.o)
DEPS := $(OBJS:.o=.d)

target: $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).bin

$(BUILD_DIR)/$(TARGET).elf : $(OBJS)
	@echo Build target: $@
	@$(CC) $(LKFLAGS) -o $@ $(OBJS) $(LKLIBS)
	@echo 'Finished building target: $@'
	@echo ' '

%.bin : %.elf
	@echo Build target: $@
	@arm-none-eabi-objcopy -O binary $< $@
	@arm-none-eabi-objdump -date     $<    > $(<:%.elf=%.dmp)
	@arm-none-eabi-nm                $<    > $(<:%.elf=%.map)
	
ifeq ($(OS),Windows_NT)	
	@arm-none-eabi-readelf.exe       $< -a > $(<:%.elf=%.txt)
	@encrc -bc -o $(@:%.bin=%_crc.bin) $@
else
	@arm-none-eabi-readelf       $< -a > $(<:%.elf=%.txt)
	@./binconvert -crc $@
endif	
	@cp -R ./build/BK3432_BIM.bin ../ble_app_ancs/output/bim
	@cp -R ./build/BK3432_BIM.bin ../ble_app_gatt/output/bim
	@cp -R ./build/BK3432_BIM.bin ../ble_app_gatt_128/output/bim
	@cp -R ./build/BK3432_BIM.bin ../ble_app_gatt_long_pdu_advertising/output/bim
	@cp -R ./build/BK3432_BIM.bin ../ble_app_gatt_muti_chars/output/bim
	@cp -R ./build/BK3432_BIM.bin ../ble_app_gatt_scan_advertising/output/bim
	@cp -R ./build/BK3432_BIM.bin ../ble_app_remote/output/bim
	@cp -R ./build/BK3432_BIM.bin ../ble_app_wechat/output/bim
	@cp -R ./build/BK3432_BIM.bin ../rf_test/output/bim
	@echo 'Finished building target: $@'
	@echo ' '

clean:
	@echo Clean project: $(TARGET)
	@-rm -rf $(OBJS) $(DEPS) $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).bin
	-@echo ' '

prev-build:
	-@echo 'Pre-building'
	-@rm -rf $(BUILD_DIR)/$(TARGET)*.*
	-@echo ' '

post-build:
	-@echo 'Post-building'
	-@echo ' '

$(BUILD_DIR)/%.o : %.c
	@echo Compiling $<
	@mkdir -p $(dir $@)
	@$(CC) -c $(CCFLAGS) -MMD -MP -MF$(@:%.o=%.d) -MT$(@) $< -o $@

$(BUILD_DIR)/dd1/%.o : ../%.c
	@echo Compiling $<
	@mkdir -p $(dir $@)
	@$(CC) -c $(CCFLAGS) -MMD -MP -MF$(@:%.o=%.d) -MT$(@) $< -o $@

$(BUILD_DIR)/dd2/%.o : ../../%.c
	@echo Compiling $<
	@mkdir -p $(dir $@)
	@$(CC) -c $(CCFLAGS) -MMD -MP -MF$(@:%.o=%.d) -MT$(@) $< -o $@

$(BUILD_DIR)/%.o : %.S
	@echo Compiling $<
	@mkdir -p $(dir $@)
	@$(CC) -c $(CCFLAGS) -MMD -MP -MF$(@:%.o=%.d) -MT$(@) $< -o $@

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(DEPS)),)
-include $(DEPS)
endif
endif

.PHONY : all clean pre-build post-build
