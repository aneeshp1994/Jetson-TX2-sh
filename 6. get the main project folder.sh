# Change the directory to home
cd $HOME/work

# Get the NICODORA folder using subversion
svn checkout https://nico.backlog.jp/svn/NICODORA

# Change the group of cache and log folder in NICODORA/trunk/src/application
cd $HOME/work/NICODORA/trunk/src/application
chgrp -R frs cache
chgrp -R frs logs
