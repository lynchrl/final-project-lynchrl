SERVICE_VERSION = 'c37de7dd63cbdf68419b5e5ea5a4e2b46a8058fa'
SERVICE_SITE = $(call github,lynchrl,final-project-lynchrl-src,$(SERVICE_VERSION))

SERVICE_DEPENDENCIES = sqlite

SERVICE_SUBDIR = service
SERVICE_GOMOD = github.com/lynchrl/final-project-lynchrl-src/service
SERVICE_BUILD_TARGETS = .

define SERVICE_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 755 $(@D)/bin/service -t $(TARGET_DIR)/opt/bmeservice
	$(INSTALL) -D -m 644 $(@D)/service/index.html -t $(TARGET_DIR)/opt/bmeservice
endef

$(eval $(golang-package))
