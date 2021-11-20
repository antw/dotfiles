#!/usr/bin/env bash
set -e

export OP_SESSION="$(op signin my.1password.com hi@antw.dev --raw)"

op get document 'SSH Key' > ~/.ssh/id_rsa

# Import GPG secret key
op get document "GPG Key" | gpg --import

# Set proper permissions on ~/.ssh
chmod 600 ~/.ssh/id_*
chmod 700 ~/.ssh

# generate public keys
for private in ~/.ssh/id_*; do
  if [[ "$private" == *.pub ]]; then
    continue
  fi

  echo $private
  ssh-keygen -y -f $private > $private.pub
done

# Set proper permissions on ~/.gnppg
chown -R $(whoami) ~/.gnupg/
find ~/.gnupg -type f -exec chmod 600 {} \;
find ~/.gnupg -type d -exec chmod 700 {} \;
