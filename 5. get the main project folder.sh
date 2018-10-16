# Change the directory to home
cd $HOME/work

# Get the NICODORA folder using subversion
echo 'Collecting the project from subversion...'
svn checkout https://nico.backlog.jp/svn/NICODORA

# Change the group of cache and log folder in NICODORA/trunk/src/application
cd $HOME/work/NICODORA/trunk/src/application
chgrp -R frs cache
chgrp -R frs logs

# Create symlink for enrolling folder
cd $HOME/work/NICODORA/trunk/src/backend
ln -snf enroll_2000-01-01-00-00-00 enroll
echo 'Done.'
echo 'Finished.'
