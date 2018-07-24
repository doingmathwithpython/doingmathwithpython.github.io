PY?=python
PELICAN?=pelican
PELICANOPTS=

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content
OUTPUTDIR=$(BASEDIR)/output
CONFFILE=$(BASEDIR)/pelicanconf.py
PUBLISHCONF=$(BASEDIR)/publishconf.py

PELICANOPTS += -D

help:
	@echo 'Makefile for a pelican Web site                                        '
	@echo '                                                                       '
	@echo 'Usage:                                                                 '
	@echo '   make test                        (re)generate the web site, starts a HTTP Server on 8000'
	@echo '   make clean                       remove the generated files         '
	@echo '   make github                      upload the web site  '
	@echo '                                                                       '
	@echo 'Set the DEBUG variable to 1 to enable debugging, e.g. make DEBUG=1 html'
	@echo '                                                                       '

test:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)
	cd $(OUTPUTDIR); python -m SimpleHTTPServer

clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)

build:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(PUBLISHCONF) $(PELICANOPTS)
	cp 404.md $(OUTPUTDIR)/

# Commit changes in site, push, update master, commit, push
# Not used any more since we use travis' github pages
# deployment option

github: 
	cp -r $(OUTPUTDIR) /tmp/
	git add -A .
	git commit -m "New post/page" || true
	git push -f origin site
	git checkout master
	cp -r /tmp/output/* .
	git add -A .
	git commit -m "New build" || true
	git push -f origin master
	rm -rf /tmp/output

.PHONY: html help clean regenerate serve devserver build ssh_upload rsync_upload dropbox_upload ftp_upload s3_upload cf_upload github
