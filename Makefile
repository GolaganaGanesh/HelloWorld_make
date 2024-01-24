# Makefile

# Variables
APP_NAME = my_flask_app
VERSION = 1.0.0
DIST_DIR = dist

# Targets
.PHONY: all clean build package

all: clean build package

clean:
	rm -rf $(DIST_DIR)

build:
	# Add any additional build steps here

package:
	mkdir -p $(DIST_DIR)/$(APP_NAME)-$(VERSION)
	cp -r * $(DIST_DIR)/$(APP_NAME)-$(VERSION)/
	tar -czvf $(DIST_DIR)/$(APP_NAME)-$(VERSION).tar.gz -C $(DIST_DIR) $(APP_NAME)-$(VERSION)
