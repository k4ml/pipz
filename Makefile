PIP_VERSION := 1.4.1
SETUPTOOLS_VERSION := 1.1.4
PIP_DIR := pip-$(PIP_VERSION)
SETUPTOOLS_DIR := setuptools-$(SETUPTOOLS_VERSION)

zip:
	wget https://pypi.python.org/packages/source/p/pip/pip-$(PIP_VERSION).tar.gz
	wget https://pypi.python.org/packages/source/s/setuptools/setuptools-$(SETUPTOOLS_VERSION).tar.gz 
	tar xzf pip-$(PIP_VERSION).tar.gz
	tar xzf setuptools-$(SETUPTOOLS_VERSION).tar.gz
	rm -rf setuptools pip pkg_resources.py
	mv $(PIP_DIR)/pip .
	mv $(SETUPTOOLS_DIR)/setuptools .
	mv $(SETUPTOOLS_DIR)/pkg_resources.py .
	rm -rf pip-* setuptools-*
	zip -r pip.zip *
