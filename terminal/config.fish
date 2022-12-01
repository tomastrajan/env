if status is-interactive
    # Commands to run in interactive sessions can go here
end

for file in ~/.config/fish/.{functions*,exports*,aliases*}
  if test -r $file
    source "$file"
  end
end


oh-my-posh init fish | source
eval "$(oh-my-posh init fish --config ~/.oh-my-posh/themes/baer.omp.json)"

# ENV for $PATH.
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
export DENO_INSTALL="/home/tomastrajan/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export ORACLE_HOME=/home/tomastrajan/oracle/instantclient_21_6
export SQLPATH=$ORACLE_HOME 
export LD_LIBRARY_PATH=$ORACLE_HOME:$LD_LIBRARY_PATH  


# Intellij IDEA
export WSL_ip_line=$(ipconfig.exe | grep "WSL" -n | awk -F ":" '{print $1+4}')
export DISPLAY=$(ipconfig.exe | awk -v a=$WSL_ip_line '{if (NR==a) print $NF":0.0"}' | tr -d "\r")
export LIBGL_ALWAYS_INDIRECT=1
export XCURSOR_SIZE=128
export GDK_SCALE=1
export GDK_DPI_SCALE=2
#sudo /etc/init.d/dbus start &> /dev/null

# Fix time
# sudo ntpdate pool.ntp.org

# Connecting to services running on Win 10
export WSL_HOST_IP=$(awk '/nameserver/ { print $2 }' /etc/resolv.conf)
#export OB_DB_HOST=$WSL_HOST_IP


# STABLE DIFFUSION
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/tomastrajan/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
    eval "$__conda_setup"
#else
#    if [ -f "/home/tomastrajan/miniconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/tomastrajan/miniconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/home/tomastrajan/miniconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<



# Load Angular CLI autocompletion.
# source <(ng completion script)
