# Terraform with DigitalOcean

## Getting Started

1. Create DigitalOcean account.

### Adding Your SSH Key
1. Go to **Settings** > **Security**.
1. Click **Add SSH Key**.
1. Go to your `~/.ssh` directory and look for your public key file - it will end in `.pub`.
1. Open the file in an editor, or output its contents with `cat`.
1. Copy the contents of your public key to your clipboard.
1. Go back to your browser and paste it into the **SSH key content** field.
1. In the **Name** field, type a single-word name for your key.
1. Now click the **API** navigation link to create a personal token, which is needed for Terraform.

### Personal Access Token

1.  Click **Generate New Token** button.
1. Give it any name you like.
1. Set it to expire in 90 days, since you only need it for this workshop.
1. If you ever want to use Terraform with DigitalOcean again, you can generate a new token.
1. Generate the token and it will be displayed. Don't close your browser tab, or navigate away until you complete the next step.
1. Open your shell initialization file and add the following environment variable.
    ```sh
    export DO_PAT="paste your token here"
    ```
1. Reload your shell to activate the new variable.

## Install Terraform

Visit the [How to Configure Terraform for DigitalOcean](https://docs.digitalocean.com/reference/terraform/getting-started/) page to start installation for your platform.

## Environment Variables

To ensure that your tokens, keys, and passwords never get checked into source code - or worse - published to a public repository in the cloud, you will set up environment variables in your shell environment. These, in turn, will be read by Terraform when you run it. Terraform will use these values during the execution of the plan to stand up your infrastructure, but never saved.

