# Makefile

# Variables
APP_NAME = my_flask_app
VERSION = 1.0.0
DIST_DIR = dist
PACKAGE_DIR = $(DIST_DIR)/$(APP_NAME)-$(VERSION)

# Targets
.PHONY: all clean build package

all: clean build package

clean:
	rm -rf $(DIST_DIR)

build:
	# Add any additional build steps here

package:
	mkdir -p $(PACKAGE_DIR)
	rsync -av --exclude=$(DIST_DIR) ./ $(PACKAGE_DIR)/
	tar -czvf $(DIST_DIR)/$(APP_NAME)-$(VERSION).tar.gz -C $(DIST_DIR) $(APP_NAME)-$(VERSION)
