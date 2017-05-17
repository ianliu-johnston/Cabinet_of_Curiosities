=== WP i18n ===
Contributors: root
Tags: CMS, navigation, menus, menu, dropdown, css, sidebar, pages, i18n, translation, localization, language, multilingual
Requires at least: 2.8
Tested up to: 3.3.2

Multilingual/internationalization plugin for WP.  Fork of WPML 2.0.4.1. 

== Description ==

NOTE: This plugin is in ALPHA and is not recommended for use on a production site.  You've been warned.

WP i18n is a fork of the last GPL-licensed version of the WPML project.  The goal (for now) is to provide an upgrade path for users of version 2.0.4.1 of WPML for anyone who is unable or does not wish to upgrade to the paid commercial version of WPML.  WP i18n is not in any way affiliated with WPML, ICanLocalize, or Amir Helzer other than that the original code was written by them.  In fact, about 99.9% of the current code for WP i18n is still the original WPML code, so thanks to them for their work on WPML.  They will not provide support for you (unless you buy WPML) and neither will I.

WP i18n will not work side-by-side with WPML.  You must deactivate WPML before installing WP i18n or things will go horribly wrong.  ICanLocalize support was ripped out pretty poorly, so if you have set up ICanLocalize translators in WPML, you should absolutely not switch to this plugin, because it will probably continue to request professional translation services without giving you the option to ever turn them off.  If you turn off any automated translation requests before switching, however, it should be fine.  We are not responsible for any fees you may end up accidentally owing translators.

This current release, 2.0.4.2-alpha, includes most of the same bugs as 2.0.4.1 of WPML and probably several more.  Although not recommended to replace your old version of WPML yet, it should do a pretty reasonable job of giving you a multilingual, localized website if you're starting from scratch.

WP i18n does not have any documentation of its own, but the vast majority of documentation from WPML (http://wpml.org) can also be applied to this plugin as well.  Just don't go asking them for WP i18n support, because they are WPML, not WP i18n.

= Features =

WP i18n makes it possible to turn WordPress blogs multilingual in a few minutes with no knowledge of PHP or WordPress.
Its advanced features allow professional web developers to build full multilingual websites.

 * Turns a single WordPress site into a multilingual site.
 * Powerful translation management, allowing teams of translators to work on multilingual sites.
 * Built-in theme localization without .mo files.
 * Comments translation allows you to moderate and reply to comments in your own language.
 * Includes CMS navigation elements for drop down menus, breadcrumbs trail and sidebar navigation.
 * Robust links to posts and pages that never break.

== Installation ==

1. Place the folder containing this file into the plugins folder
2. Activate the plugin from the admin interface

WP i18n needs to create tables in your database. These tables are used to hold the new language information. In order to use WP i18n, your MySQL user needs to have sufficient privileges to create new tables in the database.

== Frequently Asked Questions ==

= What happened to WPML? =
This plugin is not WPML and will probably diverge further and further from it over time.  WPML went commercial-only in 2011, pulling all versions 

= Can I translate myself, or do I need to pay for it? =

At this point, you have to do it yourself (or rather, someone with access to your admin has to).  Integrated support for professional services from ICanLocalize have been removed, although in a future version it will hopefully be possible to add it back in with an additional plugin.

= Languages per directories are disabled =

To be able to use languages in directories, you should use a non-default permlink structure.

= Some feature is broken or missing! =

This was a pretty rough and ugly fork of the WPML project.  If you discover any problem of any kind, please post in the WordPress.org forums.

If you're a developer, please try to fix the problem and submit a patch.

If you're a good developer, please let me know if you'd like to become a contributor or maintainer on the project, because I have extremely limited time to work on it and will not be able to make frequent updates.

= Known bugs =

* ICanLocalize support was ripped out pretty hastily and dirtily since it was integrated so tightly. If you used it before, you will need to disable any automated translation service requests you have going, or else when you install WP i18n it will probably continue to request translations without giving you an option to disable it and could run up a big useless bill...
* probably some bugs relating to default permalink structure and languages in directories
* probably dozens of other bugs left over from WPML
* translations of the plugin itself are woefully out of date now, so you'll be stuck seeing a bunch of English strings in the plugin until development stabilizes a bit

= Future plans =

Here's a blueprint for future versions, in roughly this order of importance:

1. fix any bugs and security issues when using with WordPress v3.3+
1. add support for any third-party translation service to have a plugin to integrate with WP i18n, so services like ICanLocalize can be used again
1. add support for localization of all new features in WordPress v3.3+
1. update translation files for the plugin itself

== Screenshots ==

1. Translation controls in posts and pages lists.
2. Translation controls in edit screen.
3. String translation panel for translating plugins and themes.
4. Language setup admin screen.

== Changelog ==

= 2.0.4.2-alpha =
* fork: initial fork from WPML 2.0.4.1. 
* fork: changed textual references to WPML to WP i18n
* fork: added various text to clarify relation to WPML
* fork: removed rss feed from dashboard widget
* fork: removed ICanLocalize support
* fork: removed all WPML update messages
* fork: removed all WPML paid support messages
* fork: replaced all WPML icons in case they were not GPLed
* bugfix: language switcher widget option page no longer shows warnings when widget is unused
