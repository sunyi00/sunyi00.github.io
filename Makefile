.PHONY: help

help:
	@echo targets: tags, serve

tags:
	rm -rf tag
	exec jekyll build
	rsync -vr --inplace --delete _site/tag/ tag
	@echo 'Success to build site'

serve:
	exec jekyll serve -w
