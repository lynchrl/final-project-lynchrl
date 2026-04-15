BME280_VERSION = 'f5704d4884e5de115bcc748d4e08052caef6c90a'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
BME280_SITE = 'git@github.com:lynchrl/final-project-lynchrl-src.git'
BME280_SITE_METHOD = git
BME280_GIT_SUBMODULES = YES

BME280_MODULE_SUBDIRS = driver

$(eval $(kernel-module))
$(eval $(generic-package))
