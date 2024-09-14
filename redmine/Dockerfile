FROM redmine

RUN apt-get update && apt-get install git -y && mkdir /usr/src/redmine/public/themes/bleuclair && \
git clone -b redmine3.4 https://github.com/farend/redmine_theme_farend_bleuclair.git public/themes/bleuclair
