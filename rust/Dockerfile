# Use a base image (e.g., jupyter/scipy-notebook)
FROM jupyter/scipy-notebook

# Install Rust (using rustup)
RUN curl --silent --location https://sh.rustup.rs/ | sh -s -- --profile default

# Set environment variables for Rust
ENV RUSTUP_HOME=/root/.rustup
ENV CARGO_HOME=/root/.cargo
ENV PATH=/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin:$PATH:$HOME/.cargo/bin

# Install JupyterLab kernel for Rust
RUN pip install ipyrust --user

# Optionally, install other Rust packages
# ... (example: RUN pip install rust-numpy)

# Copy any necessary files from your project
# ... (example: COPY ./your_project_files /home/jovyan/work)