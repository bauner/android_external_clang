# Only use this on the device or emulator.
ifneq ($(TARGET_ARCH),arm)

LOCAL_PATH := $(call my-dir)
CLANG_ROOT_PATH := $(LOCAL_PATH)

include $(CLEAR_VARS)

subdirs := $(addprefix $(LOCAL_PATH)/,$(addsuffix /Android.mk, \
		lib/Basic	\
		lib/Lex	\
		lib/Parse	\
		lib/AST	\
		lib/Sema	\
		lib/CodeGen	\
		lib/Analysis	\
		lib/Index	\
	))

include $(LOCAL_PATH)/clang.mk

include $(subdirs)

endif
