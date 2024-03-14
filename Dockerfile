FROM mcr.microsoft.com/dotnet/sdk:8.0.101 AS build
WORKDIR /app

LABEL "com.github.actions.name"="Microsoft Teams (Generic)"
LABEL "com.github.actions.description"="Send a message to the designated channel in Microsoft Teams"
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/freenet-actions/simple-microsoft-teams-action"
LABEL "homepage"="https://github.com/freenet-actions"
LABEL "maintainer"="Lea Reimann <lea.reimann@freenet.ag>"

COPY *.sln .
COPY src/ ./src/

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
