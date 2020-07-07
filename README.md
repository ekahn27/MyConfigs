##My Vim Configurations
This contains my vimrc file which has all of my vim settings, making it easy to
set up my workspace on other computers.

There is also a .vim/colors directory that contains colorschemes I liked. The
one I'm currently using is gruvbox which I edited to automatically go into
dark-mode.

There are also some other files such as .bashrc and .profile that contain
configurations and aliases that I like.

When on a new machine, I normally clone this repo and create a hardlink
between these files and their counterparts in my home directory so that...
1. Files like .vimrc, .bashrc, .profile are actually used (they need to be in
the home directory)
2. Any changes made to one configuration file automatically happens to the
other. This means I only need to make the edit once in order to update the local
repo and the config file read by the machine.
