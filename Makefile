# Makefile for the Python project
#

# You can set these variables from the command line.
DISTDIR       = dist
EGGDIR        = CWR_API.egg-info
PYTHON        = python

# User-friendly check for sphinx-build
ifeq ($(shell which $(SPHINXBUILD) >/dev/null 2>&1; echo $$?), 1)
$(error The '$(SPHINXBUILD)' command was not found. Make sure you have Sphinx installed, then set the SPHINXBUILD environment variable to point to the full path of the '$(SPHINXBUILD)' executable. Alternatively you can add the directory with the executable to your PATH. If you don't have Sphinx installed, grab it from http://sphinx-doc.org/)
endif

.PHONY: help clean 

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  sdist      to make the standard distribution"
	@echo "  bdist      to make the binary distribution"

clean:
	rm -r $(DISTDIR)
	rm -r $(EGGDIR)
	
sdist:
    $(PYTHON) setup.py sdist
	
bdist:
    $(PYTHON) setup.py bdist