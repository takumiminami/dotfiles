# for openmpi
#export MANPATH=/usr/lib/openmpi/share/man:$MANPATH
#export LD_LIBRARY_PATH=/usr/lib/openmpi/lib:$LD_LIBRARY_PATH
#export PATH="/usr/lib/openmpi/bin:$PATH"
#export TMPDIR=/tmp


# If you wanna define your own functions, write here.
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi


# If you wanna add environmental variables, write here.
export PYENV_ROOT=$HOME/.pyenv
export PYTHONPATH=$HOME/bin/pylib
#export TERM=xterm-color

export PATH=$HOME/bin:$PATH
export PATH=$HOME/bin/scripts:$PATH
export PATH=$PYENV_ROOT/bin:$PATH
export PATH=$PYENV_ROOT/shims:$PATH
export PATH=/Library/TeX/texbin:$PATH

export PHITSPATH=$HOME/bin/phits
export PATH=$HOME/bin/phits/bin:${PATH}
export PATH=$HOME/bin/phits/dchain-sp/bin:${PATH}

eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

export LDFLAGS="-L/usr/local/opt/libomp/lib"
export CPPFLAGS="-I/usr/local/opt/libomp/include"

