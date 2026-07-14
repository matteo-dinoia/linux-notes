https://github.com/LeoniePhiline/ssh-agent-kwallet-guide

Your ~/.ssh/config file should look something like this:

Host github.com
    IdentityFile ~/.ssh/personal
    AddKeysToAgent  yes

    
Next, set up ssh-agent so that it starts at boot. We will create a user systemd unit/service, called ssh-agent.service.

Create the folder to store the unit file: mkdir -p ~/.config/systemd/user

Create the unit file, e.g. my-ssh-agent.service with the following content:

[Unit]
Description=SSH key agent

[Service]
Type=simple
ExecStart=/usr/bin/ssh-agent -D -a ${XDG_RUNTIME_DIR}/ssh-agent.socket

[Install]
WantedBy=default.target


At this point you can add the following to your .profile:

# For SSH agent systemd user unit
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"


systemctl --user enable --now ssh-agent.service

Then check identities known/cached by the ssh-agent with:

ssh-add -l
