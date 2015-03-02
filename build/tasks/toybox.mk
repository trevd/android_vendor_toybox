$(info Making $(MAKECMDGOALS))
.PHONY: $(TOYBOX_GOAL)
$(TOYBOX_GOAL): $(modules_to_install)
	$(hide) mkdir -vp $(TARGET_ROOT_OUT_SYSTEM)
	$(hide) $(ACP) -dpvrf $(TARGET_OUT)/* $(TARGET_ROOT_OUT_SYSTEM)
	$(hide) $(MKBOOTFS) $(TARGET_ROOT_OUT) | $(MINIGZIP) > $(BUILT_RAMDISK_TARGET)

droid: $(TOYBOX_GOAL)


