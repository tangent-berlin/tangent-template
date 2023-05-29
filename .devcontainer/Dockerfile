# Start with the base image
FROM ubuntu:jammy AS builder

LABEL version="0.1"
LABEL description="Devcontainer image with poetry and bun multirepo"
LABEL maintainer="contact@tangent.berlin"

ARG HOME="/root"
ARG XDG_CONFIG_HOME="/root/.config"
ARG XDG_CACHE_HOME="/root/.cache"
ARG WORKDIR="/src"
ARG INSTALLDIR="/opt"

VOLUME ["${XDG_CACHE_HOME}"]

RUN mkdir -p "${HOME}" && \
    mkdir -p "${WORKDIR}" && \
    mkdir -p "${XDG_CONFIG_HOME}" && \
    mkdir -p "${XDG_CACHE_HOME}" && \
    mkdir -p "${INSTALLDIR}"

# Env vars
ENV DEBIAN_FRONTEND=noninteractive \
    BUN_INSTALL="${INSTALLDIR}/bun" \
    POETRY_HOME="${INSTALLDIR}/poetry" \
    CARGO_HOME="${INSTALLDIR}/cargo" \
    PATH="${CARGO_HOME}/bin:${BUN_INSTALL}/bin:${POETRY_HOME}/bin:${PATH}"

# Install dependencies
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get -y install --no-install-recommends apt-utils 2>&1 && \
    apt-get -y install iproute2 procps lsb-release pkg-config build-essential libssl-dev cmake \
    software-properties-common cargo locales \
    curl git gh unzip lynx jq xsel fish fzf bat micro fd-find && \
    locale-gen en_US.UTF-8 && \
    update-alternatives --set www-browser /usr/bin/lynx && \
    update-alternatives --install /usr/bin/editor editor /usr/bin/micro 100 && \
    curl -o /usr/local/bin/diff-so-fancy https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy && \
    chmod +x /usr/local/bin/diff-so-fancy && \
    #curl -fsSL https://bun.sh/install | bash - && \ # missing version
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 \
    TZ=Europe/Berlin \
    EDITOR="/usr/bin/micro" \
    MICRO_TRUECOLOR=1 \
    FZF_DEFAULT_COMMAND="/usr/bin/fd" \
    BAT_PAGER="/usr/bin/bat" \
    FD_OPTIONS="--hidden --no-ignore-vcs"

# Additional tool installation
RUN curl -fsSL https://raw.githubusercontent.com/ellie/atuin/main/install.sh | bash - && \
    cargo install nu --features=dataframe && \
    cargo install --git https://github.com/Peltoche/lsd.git --branch master && \
    cargo install organize-rt tre-command ripgrep watchexec-cli du-dust tokei starship && \
    echo "deb [trusted=yes] https://apt.fury.io/rsteube/ /" >> /etc/apt/sources.list.d/rsteube.list && \
    apt-get update && \
    apt-get -y install carapace-bin && \
    rm -rf "${CARGO_HOME}/registry" && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Setup required ARGs
ARG PYTHON_VERSION=3.11
ARG NODEJS_VERSION=18
ARG PNPM_VERSION=8.5.1
ARG BUN_VERSION=0.6.2
ARG POETRY_VERSION=1.4.2

# Python installation
RUN add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get -y install python$PYTHON_VERSION && \
    update-alternatives --install /usr/bin/python3 python3 /usr/bin/python$PYTHON_VERSION 1 && \
    update-alternatives --config python3 && \
    update-alternatives --install /usr/bin/python python /usr/bin/python$PYTHON_VERSION 1 && \
    update-alternatives --config python && \
    curl -fsSL https://install.python-poetry.org | python3 - --version $POETRY_VERSION && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Node.js installation
RUN curl -fsSL https://deb.nodesource.com/setup_$NODEJS_VERSION.x | bash - && \
    apt-get update && \
    apt-get install -y nodejs && \
    npm install -g pnpm@$PNPM_VERSION bun@$BUN_VERSION

# CLI installation
RUN npm install -g turbo firebase-tools vercel && \
    firebase experiments:enable webframeworks && \
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" >> /etc/apt/sources.list.d/gcloud.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - && \
    apt-get update && \
    apt-get -y install google-cloud-sdk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV DEBIAN_FRONTEND=dialog

FROM builder

# Change default shell to fish
SHELL ["/usr/bin/fish", "-c"]

# Install fisher and plugins
RUN curl -fsSL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && \
    fisher install jorgebucaran/fisher jethrokuan/z decors/fish-colored-man jorgebucaran/autopair.fish \
    nickeb96/puffer-fish jorgebucaran/replay.fish joehillen/to-fish jorgebucaran/fishtape tangent-berlin/fzf.fish \
    tangent-berlin/fish-fzf-z omochice/fzf-emoji.fish dteoh/fish-direnv daleeidd/natural-selection dracula/fish && \
    curl -fsSL https://raw.githubusercontent.com/tangent-berlin/bash-bashing/main/scripts/files/git/setup_git_diff-so-fancy_aliases.sh | bash -

COPY config/* "$HOME/.config/"
RUN mv -f "$HOME/.config/config.fish" "$HOME/.config/fish/config.fish"

# ToDo: Set up a config volume
#VOLUME ["/mnt/config"]
# Append from config mount. To load bun config mount /mnt/config contining .bunfig.toml
#RUN fish -c 'for file in "/mnt/config/*"; if test -f $file; cat "$file" > "$HOME/.config/$file"; end; end'

# ToDo: Set up a cache volume
# Install to fetch cache
# RUN mkdir -p /root/.cache/template && cd /root/.cache/template && \
#     bun create tangent-berlin/tangent-template . && \
#     bun install

WORKDIR "$WORKDIR"

ENV DEBIAN_FRONTEND=dialog
