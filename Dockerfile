FROM python:3-slim

LABEL "com.github.actions.name"="Auto-linter"
LABEL "com.github.actions.description"="Python linter checker"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/lucasvazq/auto-lint"
LABEL "homepage"="https://github.com/lucasvazq/auto-lint"
LABEL "maintainer"="Lucas Vazquez <lucas5zvazquez@gmail.com>"

RUN pip install pylint
RUN python --version ; pip --version ; pylint --version

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]