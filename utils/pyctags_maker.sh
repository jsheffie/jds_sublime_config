#!/bin/bash

# Package Control Messages ( for ctags )
# I followed this:
# http://www.gravitywell.co.uk/blog/post/how-to-set-up-ctags-for-sublime-text-editor-2

# Index your code: 
# ctags -R -f .tags

# A wrapper script for setting up cscope in emacs:
# However: I did get it goinig with xemacs.el


# CTags.sublime-settings

#  ==============================  ================  ===========  ======================
#  Command                         Key Binding       Alt Binding  Mouse Binding
#  ==============================  ================  ===========  ======================
#  rebuild_ctags                   ctrl+t, ctrl+r
#  navigate_to_definition          ctrl+t, ctrl+t    ctrl+>       ctrl+shift+left_click
#  jump_prev                       ctrl+t, ctrl+b    ctrl+<       ctrl+shift+right_click
#  show_symbols                    alt+s
#  show_symbols (all files)        alt+shift+s
#  show_symbols (suffix)           ctrl+alt+shift+s
#  ==============================  ================  ===========  ======================


pwd=$PWD
echo "make sure you have done [ workon <project> ] before running this command!!!"
read foo

if [ ! -f '.tags' ]; then
	echo "I dont beleive you are in the directory you want to be in: exiting"
	echo "ERROR: could not find .tags file: ( touch .tags ) if this is the dir you want."
	exit 1
fi

touch .tags

echo "Building ctags files..."
ctags -R -f .tags . $VIRTUAL_ENV/lib/python2.7/site-packages
