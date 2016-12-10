#
# dev env - Dockerfile for the golang-gae image
# by etnbrd - etn@etnbrd.com
#

from nfnty/arch-mini
maintainer etnbrd

# TODO all these commands should go in a salt configuration
run pacman -Suy --noconfirm which grep procps openssh mosh git zsh nodejs npm; \
    useradd -g users --create-home etn; \
    cd /home/etn

user etn
run git clone --recursive https://github.com/etnbrd/dotfiles.git /home/etn/.dotfiles; \
    echo "export TAGS=arch,dev" > /home/etn/.localrc; \
    /home/etn/.dotfiles/bin/bootstrap;
