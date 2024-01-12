if test -n "$PYTHONPATH"
    set -x PYTHONPATH '/home/nfel/.local/share/pdm/venv/lib/python3.8/site-packages/pdm/pep582' $PYTHONPATH
else
    set -x PYTHONPATH '/home/nfel/.local/share/pdm/venv/lib/python3.8/site-packages/pdm/pep582'
end
if test -n "$PYTHONPATH"
    set -x PYTHONPATH '/home/nfel/.local/share/pdm/venv/lib/python3.8/site-packages/pdm/pep582' $PYTHONPATH
else
    set -x PYTHONPATH '/home/nfel/.local/share/pdm/venv/lib/python3.8/site-packages/pdm/pep582'
end
. "$HOME/.cargo/env"

[ -s "/home/nfel/.web3j/source.sh" ] && source "/home/nfel/.web3j/source.sh"

[ -s "/home/nfel/.jabba/jabba.sh" ] && source "/home/nfel/.jabba/jabba.sh"
