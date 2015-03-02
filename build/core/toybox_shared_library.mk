ifeq ($(filter  $(LOCAL_STATIC_LIBRARIES) $(LOCAL_SHARED_LIBRARIES),libmedia_helper libbatteryservice libbinder),)
include $(BUILD_TARGET_SHARED_LIBRARY)
endif
