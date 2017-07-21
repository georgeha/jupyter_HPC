unset XDG_RUNTIME_DIR
ipnport=$(shuf -i8000-9999 -n1)
ipnip=$(hostname -i)

echo -e "
    Copy/Paste this in your local terminal to ssh tunnel with remote
    -----------------------------------------------------------------
    ssh -N -L $ipnport:$ipnip:$ipnport user@host
    -----------------------------------------------------------------

    Then open a browser on your local machine to the following address
    ------------------------------------------------------------------
    localhost:$ipnport  (prefix w/ https:// if using password)
    ------------------------------------------------------------------
    "


## launch jupyter
jupyter notebook --no-browser --port=$ipnport --ip=$ipnip


