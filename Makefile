ifeq ($(MACOS),1)
    ARCHS = i386 x86_64
    TARGET = macosx:clang::10.10
else
    ARCHS = armv7 arm64
    TARGET = iphone:clang::8.0

    ftt_FRAMEWORKS = UIKit
    ftt_CODESIGN_FLAGS = -Sent.plist -Icom.ipadkid.ftt
endif

include $(THEOS)/makefiles/common.mk

TOOL_NAME = ftt
ftt_FILES = main.m
ftt_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tool.mk
