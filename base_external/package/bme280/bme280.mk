BME280_VERSION = 'f5704d4884e5de115bcc748d4e08052caef6c90a'
BME280_SITE = $(call github,lynchrl,final-project-lynchrl-src,$(BME280_VERSION))

BME280_MODULE_SUBDIRS = driver

$(eval $(kernel-module))
$(eval $(generic-package))
