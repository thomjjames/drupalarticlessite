; Drupal 7 make file for article site

; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.

core = 7.x

; API version
; ------------
; Every makefile needs to declare its Drush Make API version. This version of
; drush make uses API version `2`.

api = 2

; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.

; Drupal 7.x. Requires the `core` property to be set to 7.x.
projects[pressflow][type] = "core"
projects[pressflow][download][type] = "git"
projects[pressflow][download][url] = "git://github.com/pressflow/7.git"
projects[pressflow][download][branch] = "master"



; Modules
; --------
projects[admin][subdir] = contrib
projects[admin_menu][subdir] = contrib
projects[addanother][subdir] = contrib
projects[ctools][subdir] = contrib
projects[context][subdir] = contrib
projects[date][subdir] = contrib
projects[devel][subdir] = contrib
projects[diff][subdir] = contrib
projects[ds][subdir] = contrib
projects[features][subdir] = contrib
projects[field_group][subdir] = contrib
projects[field_permissions][subdir] = contrib
projects[email][subdir] = contrib
projects[entity][subdir] = contrib
projects[link][subdir] = contrib
projects[menu_block][subdir] = contrib
projects[imce][subdir] = contrib
projects[backup_migrate][subdir] = contrib
projects[insert][subdir] = contrib
projects[imageapi][subdir] = contrib
projects[imce_wysiwyg][subdir] = contrib
projects[libraries][subdir] = contrib
projects[logintoboggan][subdir] = contrib
projects[page_title][subdir] = contrib
projects[token][subdir] = contrib
projects[transliteration][subdir] = contrib
projects[shadowbox][subdir] = contrib
projects[styles][subdir] = contrib
projects[views_bulk_operations][subdir] = contrib
projects[panels][subdir] = contrib
projects[rules][subdir] = contrib
projects[imce_wysiwyg][subdir] = contrib
projects[wysiwyg][subdir] = contrib
projects[views][subdir] = contrib
projects[webform][subdir] = contrib
projects[variable][subdir] = contrib
projects[references][subdir] = contrib
projects[flag][subdir] = contrib
projects[strongarm][subdir] = contrib
projects[views_slideshow][subdir] = contrib


; @todo - SEO modules
projects[page_title][subdir] = contrib
projects[metatag][subdir] = contrib
projects[service_links][subdir] = contrib
projects[google_analytics][subdir] = contrib
projects[globalredirect][subdir] = contrib
projects[pathauto][subdir] = contrib
projects[xmlsitemap][subdir] = contrib

; experimental
projects[contentoptimizer][subdir] = contrib


; Themes
; --------
projects[] = omega
projects[] = basic



; Libraries
; ---------
; jquery
libraries[jquery][download][type] = "file"
libraries[jquery][download][url] = "https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"

; jquery UI
libraries[jqueryui][download][type] = "file"
libraries[jqueryui][download][url] = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.17/jquery-ui.min.js"

; jquery cycle
libraries[jquery.cycle][download][type] = "get"
libraries[jquery.cycle][download][url] = "http://jquery.malsup.com/cycle/release/jquery.cycle.zip?v2.99"
libraries[jquery.cycle][directory_name] = "jquery.cycle"

; shadowbox module contains own make file so no need to download separately

; tinyMCE
libraries[tinymce][download][type] = "get"
libraries[tinymce][download][url] = "http://downloads.sourceforge.net/project/tinymce/TinyMCE/3.3.9.2/tinymce_3_3_9_2.zip"
libraries[tinymce][directory_name] = "tinymce"



; @todo - Installer Profile
; projects[front_base][type] = "profile"
; projects[front_base][download][type] = "git"
; projects[front_base][download][url] = "git://github.com/front/front_base.git"
; projects[front_base][download][branch] = "master"
; projects[front_base][directory_name] = "front_base"
; projects[front_base][destination] = "profiles"