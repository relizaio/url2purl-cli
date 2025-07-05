FROM python:3.14.0b3-alpine3.21@sha256:b472430404d83a80c95c9387338c09d4e7218632cfb9daed2d3978db4966648d

ARG CI_ENV=noci
ARG GIT_COMMIT=git_commit_undefined
ARG GIT_BRANCH=git_branch_undefined
ARG VERSION=not_versioned

WORKDIR /app
COPY requirements.txt ./
RUN apk add git && pip install --no-cache-dir -r requirements.txt
COPY . .

LABEL org.opencontainers.image.title="url2purl CLI"
LABEL org.opencontainers.image.description="url2purl CLI tool"
LABEL org.opencontainers.image.revision=$GIT_COMMIT
LABEL org.opencontainers.image.base.digest=sha256:b472430404d83a80c95c9387338c09d4e7218632cfb9daed2d3978db4966648d
LABEL org.opencontainers.image.base.name="python:3.14.0b3-alpine3.21"
LABEL org.opencontainers.image.authors="Reliza Incorporated"
LABEL org.opencontainers.image.vendor="Reliza Incorporated"
LABEL org.opencontainers.image.license="MIT"
LABEL org.opencontainers.image.source="https://github.com/relizaio/url2purl-cli"
LABEL org.opencontainers.image.version=$VERSION

LABEL git_branch=$GIT_BRANCH
LABEL ci_environment=$CI_ENV

ENTRYPOINT ["python", "-m", "src"]