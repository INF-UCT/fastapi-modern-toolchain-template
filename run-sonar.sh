#!/bin/bash

if ! [ -x "$(command -v docker)" ]; then
  echo 'Error: docker is not installed.' >&2
  exit 1
fi

sudo -v

if [ ! -f ./bin/act ];
then
    echo "Installing act..."
    curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash

    echo "act installed successfully."
fi

echo "Running SonarQube analysis using act (Github actions locally)..."

docker pull catthehacker/ubuntu:runner-22.04

./bin/act -W .github/workflows/sonar.yml \
  --secret-file ./.env \
  -P ubuntu-latest=catthehacker/ubuntu:runner-22.04

