SERVICE_VERSION = '3e95659002956535e5dc8bfd0fb60450238642b1'
SERVICE_SITE = $(call github,lynchrl,final-project-lynchrl-src,$(SERVICE_VERSION))

SERVICE_DEPENDENCIES = sqlite

SERVICE_SUBDIR = service
SERVICE_GOMOD = github.com/lynchrl/final-project-lynchrl-src/service
SERVICE_BUILD_TARGETS = .

$(eval $(golang-package))
