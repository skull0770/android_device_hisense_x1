$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr/include)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file
-include vendor/hisense/x1/AndroidBoardVendor.mk
