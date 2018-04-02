# Don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend


# Enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# Create an alias for changing directory to Desktop
alias dt='cd /mnt/c/Users/emaca/Desktop/'
alias cs='cd /mnt/c/Users/emaca/Desktop/"University Work"/"Year 3"/"Semester 1"/"Computer Systems"'
alias ai='cd /mnt/c/Users/emaca/Desktop/"University Work"/"Year 3"/"Semester 1"/"Artificial Intelligence"'
alias ml='cd /mnt/c/Users/emaca/Desktop/"University Work"/"Year 3"/"Semester 1"/"Machine Learning"'
alias smd='cd /mnt/c/Users/emaca/Desktop/"University Work"/"Year 3"/"Semester 1"/"Software Modelling & Design"'

# Create an alias for ssh-ing into NeCTAR Virtual Machine
alias nectarvm='ssh -i ~/.ssh/id_rsa ubuntu@115.146.92.248'

# Bash prompt configurationss
orange=$(tput setaf 208);
yellow=$(tput setaf 228);
green=$(tput setaf 71);
white=$(tput setaf 15);
blue=$(tput setaf 45);
red=$(tput setaf 160);
grey=$(tput setaf 7);
bold=$(tput bold);
reset=$(tput sgr0);


# Bash prompt text
PS1="\[${bold}\]\n";
PS1+="\[${grey}\]\u"; # username
PS1+="\[${grey}\]@";
PS1+="\[${grey}\]\h"; # hostname
PS1+="\[${grey}\] in ";
PS1+="\[${grey}\]\w"; # working directory
PS1+="\n";
PS1+="\[${white}\]\$ \[${reset}\]"; # '$' (and reset colour)

export PS1;
