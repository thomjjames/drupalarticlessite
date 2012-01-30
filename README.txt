----------------------------------------
OVERVIEW
----------------------------------------
This is a basic drush make file which can be used to set up a Drupal 7 site without needing to download all the files and modles.

----------------------------------------
REQUIREMENTS
----------------------------------------
Requires drush_make (http://drupal.org/project/drush_make) and of course drush (http://drupal.org/project/drush) to work.

Use drush make 6.x-2.2 version, the 6.x-3.x-dev is NOT compatible yet.

----------------------------------------
INSTRUCTIONS
----------------------------------------
The make file can be used to start any Drupal 7 project using the following workflow (assumes drush & drush_make are installed):

1. Create a new repository on git hub for the project code (remember the project name for step 2&3).

2. Fire up Terminal and navigate to the directory one level up from where you want your local working copy to be
ie. your local working copy = Users/tom/sites/front/PROJECTNAME, navigate to Users/tom/sites/front
DO NOT CREATE THE PROJECTNAME DIRECTORY (drush will handle that).

3. Run the following command in terminal:
drush make --force-complete drupalarticlesite.make ./PROJECTNAME

NOTE: It's important PROJECTNAME is the same as the name of the git repository you have created for the project.

4. If it completes the command without errors you should now have a new folder with project name ie. Users/tom/sites/front/PROJECTNAME which should contain all the Drupal 7 files, a selection of modules & some extra themes.

5. Next initiate git in the project directory by running the following commands in terminal:

  cd PROJECTNAME
  git init
  git add -A
  git commit -m 'first commit for Drupal 7 code for the PROJECTNAME project'
  git remote add origin git@github.com:front/PROJECTNAME.git
  git push -u origin master


6. Install Drupal. On the installation screen (install.php) you should see a new installer profile called "Front Base D7" select that and continue.
Front Base D7 will enable a selection of commonly used modules like views, features etc as well as other set up tasks see README in the github project https://github.com/front/front_base/blob/master/README.

This will give you a local development environment & github repo. To deploy this to a live development server you should git clone the new repo onto the live server in the site root and then copy the local database dump or simply run the Front Base D7 installer on the live server (see INSTALL DRUPAL WITH DRUSH below).

7. Before making any further commits to git you should create a git ignore file to ignore the files directory & settings.php file.
See: http://help.github.com/git-ignore/


OTHER NOTES

* INSTALL DRUPAL WITH DRUSH
Install Drupal with the front_base install profile using crush (this will create your files & settings.php file automatically):
drush site-install standard --account-name=admin --account-pass=4buildOUT --db-url=mysql://root:4buildOUT@localhost/shorts



----------------------------------------
MODULES & THEMES ADDED BY MAKE FILE
----------------------------------------

This is version 1 of the make file so please make suggestions if you think any modules/themes should be added or remove.

MODULES

admin
admin_menu
backup_migrate
ctools
context
date
devel
diff
features
flag
email
link
imce
i18n
imageapi
imce_wysiwyg
libraries
logintoboggan
page_title
pathauto
strongarm
token
transliteration
variable
views_bulk_operations
panels
references
rules
wysiwyg
views
views_slideshow
webform
xmlsitemap

THEMES

basic
genesis