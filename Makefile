THEOS_DEVICE_IP = 192.168.1.102
TARGET = iphone:7.0:5.0
ARCHS = armv7 armv7s arm64

include theos/makefiles/common.mk

TWEAK_NAME = Skua
Skua_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 QQ"
