FROM gitpod/workspace-full

# Install AWS CLI
RUN sudo apt-get update && sudo apt-get install -y awscli

# Install Terraform 1.13.0
ARG TF_VERSION=1.13.0
RUN curl -fsSL https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip -o terraform.zip \
    && unzip terraform.zip \
    && sudo mv terraform /usr/local/bin/ \
    && rm terraform.zip
