# Makefile

.PHONY: all clean package

all: clean package

clean:
    rm -rf dist/ build/ *.egg-info/

package:
    python setup.py sdist bdist_wheel
