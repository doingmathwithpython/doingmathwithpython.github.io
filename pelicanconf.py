# -*- coding: utf-8 -*- #
from __future__ import unicode_literals
import os

AUTHOR = u'Amit Saha'
SITENAME = u'Doing Math with Python'
SITEURL = ''
DEFAULT_LANG = u'en'
TIMEZONE = 'Australia/Brisbane'
# Feed generation is usually not desired when developing

DISPLAY_CATEGORIES_ON_MENU = False

PAGE_ORDER_BY = 'pageno'
STATIC_PATHS = ['images']
PLUGIN_PATHS = [os.path.join('.', 'pelican-plugins')]
PLUGINS = ['share_post']
