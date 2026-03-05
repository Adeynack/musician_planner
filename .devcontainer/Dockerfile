# Make sure RUBY_VERSION matches the Ruby version in .ruby-version
ARG RUBY_VERSION=3.1.7
FROM ghcr.io/rails/devcontainer/images/ruby:$RUBY_VERSION

# Ensure binding is always 0.0.0.0
# Binds the server to all IP addresses of the container, so it can be accessed from outside the container.
ENV BINDING="0.0.0.0"

# Share the vscode user's mise tool installations with root.
# Without this, mise defaults to /root/.local/share/mise which is empty.
ENV MISE_DATA_DIR="/home/vscode/.local/share/mise"

USER root

# Create a mise config for root that explicitly opts in to .ruby-version support.
# Without this, mise 2025.x prints an idiomatic_version_file_enable_tools warning
# on every shim invocation, flooding the output during postCreateCommand.
RUN mkdir -p /root/.config/mise
RUN printf '[settings]\nidiomatic_version_file_enable_tools = ["ruby"]\n' > /root/.config/mise/config.toml

ENV PATH="/home/vscode/.local/share/mise/shims:/home/vscode/.local/bin:$PATH"

ENV BUNDLE_SILENCE_ROOT_WARNING=1
# Install gems to a root-owned path instead of the vscode user's mise gem directories.
# Without this, native extension compilation fails because root cannot write build
# artifacts into /home/vscode/.local/share/mise/installs/ruby/.../gems/.
ENV BUNDLE_PATH="/bundle"
RUN mkdir -p /bundle
