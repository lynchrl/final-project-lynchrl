BME280_VERSION = 'a0962994f10ceb6492f693f27fe8241682b280f2'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
BME280_SITE = 'git@github.com:lynchrl/final-project-lynchrl-src.git'
BME280_SITE_METHOD = git
BME280_GIT_SUBMODULES = YES

BME280_MODULE_SUBDIRS = driver

$(eval $(kernel-module))
$(eval $(generic-package))
