PIP_VERSION := 1.4.1
SETUPTOOLS_VERSION := 1.1.4
PIP_DIR := pip-$(PIP_VERSION)
SETUPTOOLS_DIR := setuptools-$(SETUPTOOLS_VERSION)

zip:
	wget https://pypi.python.org/packages/source/p/pip/pip-$(PIP_VERSION).tar.gz
	wget https://pypi.python.org/packages/source/s/setuptools/setuptools-$(SETUPTOOLS_VERSION).tar.gz 
	tar xzf pip-$(PIP_VERSION).tar.gz
	tar xzf setuptools-$(SETUPTOOLS_VERSION).tar.gz
	rm -rf libs/* 
	mv $(PIP_DIR)/pip libs/
	mv $(SETUPTOOLS_DIR)/setuptools libs/
	rm -rf pip* setuptools*
	zip -r ../pip.zip *
