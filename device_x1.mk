$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/hisense/x1/x1-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/hisense/x1/overlay

LOCAL_PATH := device/hisense/x1

# Charger
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/ramdisk/charger:root/charger \
    $(LOCAL_PATH)/rootdir/ramdisk/res/images/charger/battery_0.png:root/res/images/charger/battery_0.png \
    $(LOCAL_PATH)/rootdir/ramdisk/res/images/charger/battery_1.png:root/res/images/charger/battery_1.png \
    $(LOCAL_PATH)/rootdir/ramdisk/res/images/charger/battery_2.png:root/res/images/charger/battery_2.png \
    $(LOCAL_PATH)/rootdir/ramdisk/res/images/charger/battery_3.png:root/res/images/charger/battery_3.png \
    $(LOCAL_PATH)/rootdir/ramdisk/res/images/charger/battery_4.png:root/res/images/charger/battery_4.png \
    $(LOCAL_PATH)/rootdir/ramdisk/res/images/charger/battery_5.png:root/res/images/charger/battery_5.png \
    $(LOCAL_PATH)/rootdir/ramdisk/res/images/charger/battery_charge.png:root/res/images/charger/battery_charge.png \
    $(LOCAL_PATH)/rootdir/ramdisk/res/images/charger/battery_fail.png:root/res/images/charger/battery_fail.png   

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/ramdisk/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/rootdir/ramdisk/init.class_main.sh:root/init.class_main.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.mdm.sh:root/init.mdm.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.factory.sh:root/init.qcom.factory.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/rootdir/ramdisk/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/rootdir/ramdisk/sepolicy:root/sepolicy \
    $(LOCAL_PATH)/rootdir/ramdisk/seapp_contexts:root/seapp_contexts \
    $(LOCAL_PATH)/rootdir/ramdisk/property_contexts:root/property_contexts \
    $(LOCAL_PATH)/rootdir/ramdisk/file_contexts:root/file_contexts        

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel  
    
$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_x1
PRODUCT_DEVICE := x1
