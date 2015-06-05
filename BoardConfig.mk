USE_CAMERA_STUB := true

BOARD_VENDOR := hisense

COMMON_PATH := device/hisense/x1

# inherit from the proprietary version
-include vendor/hisense/x1/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE  := true

TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330
TARGET_BOOTLOADER_BOARD_NAME := MSM8974

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true

BOARD_KERNEL_CMDLINE := console=tty0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4         := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216  #16M boot 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216	#16M recovery
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648	#2.0G system
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12884901888 #12.0G userdata
BOARD_CACHEIMAGE_PARTITION_SIZE    := 103179878  
BOARD_PERSISTIMAGE_PARTITION_SIZE := 5138022
BOARD_FLASH_BLOCK_SIZE := 131072

# dt.img
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --dt device/hisense/x1/dt.img

TARGET_PREBUILT_KERNEL := device/hisense/x1/kernel


BOARD_EGL_CFG := $(COMMON_PATH)/configs/egl.cfg

#Recovery
TARGET_RECOVERY_INITRC := $(COMMON_PATH)/rootdir/ramdisk/init.rc
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/ramdisk/fstab.qcom
RECOVERY_FSTAB_VERSION           := 2
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_BRIGHTNESS_PATH := /sys/devices/mdp.0/qcom,mdss_fb_primary.170/leds/lcd-backlight/brightness
BOARD_USE_CUSTOM_RECOVERY_FONT   := \"roboto_23x41.h\"
BOARD_RECOVERY_SWIPE := true
BOARD_HAS_NO_SELECT_BUTTON := true

-include vendor/hisense/x1/BoardConfigVendor.mk
