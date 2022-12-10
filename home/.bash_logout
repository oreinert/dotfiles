if [ $SHLVL -eq 1 ] && [ -n "$SSH_AGENT_PID" ]; then
    eval "$(ssh-agent -k)"
fi
