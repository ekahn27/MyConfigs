## My Linux Configurations

This contains my vimrc file which has all of my vim settings, making it easy to
set up my workspace on other computers.

There is also a .vim/colors directory that contains colorschemes I've
downloaded. The one I'm currently using is gruvbox which I edited to
always be in dark-mode

There are also some other generic files such as .bashrc and .profile that
contain edits/aliases at the end.

When on a new machine, I normally clone this repo and create a hardlink
between these files and files in the home directory with the same name so
that...
1. Files like .vimrc, .bashrc, .profile are actually used (they need to be in
the home directory)
2. Any changes made to a configuration file automatically happens in the home
directory and this local repo. This means I only need to make an edit once 
and I'm ready to commit/push and the new settings are in place on the machine.
