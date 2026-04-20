SERVICE_VERSION = '023cf94e048d5ec7ea7eea33e28d3cbe846b318d'
SERVICE_SITE = $(call github,lynchrl,final-project-lynchrl-src,$(SERVICE_VERSION))

SERVICE_DEPENDENCIES = sqlite

SERVICE_SUBDIR = service
SERVICE_GOMOD = github.com/lynchrl/final-project-lynchrl-src/service
SERVICE_BUILD_TARGETS = .

$(eval $(golang-package))
