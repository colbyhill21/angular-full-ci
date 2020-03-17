FROM node:latest

LABEL "com.github.actions.name"="angular-full-ci"
LABEL "com.github.actions.description"="Run full CI workflow for Angular projects"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/colbyhill21/angular-full-ci.git"
LABEL "homepage"="https://github.com/colbyhill21/angular-full-ci/"

LABEL "maintainer"="Colby Hill <colbyahill21@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
