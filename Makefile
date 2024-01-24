# Makefile

# Variables
APP_NAME = my_flask_app
VERSION = 1.0.0

# Targets
.PHONY: all clean build package

all: clean build package

clean:
    rm -rf dist/

build:
    # You can add any additional build steps here

package:
    mkdir -p dist/$(APP_NAME)-$(VERSION)
    cp -r * dist/$(APP_NAME)-$(VERSION)/
    tar -czvf dist/$(APP_NAME)-$(VERSION).tar.gz -C dist $(APP_NAME)-$(VERSION)
