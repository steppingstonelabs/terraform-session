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

### Personal Access Token

Your Personal Access Token is used to authenticate the requests that Terraform will make on your behalf. You will store your PAT as an environment variable, and Terraform will read that variable during its process.

1. Click the **API** navigation link.
2. Click **Generate New Token** button.
3. Give it any name you like.
4. Set it to expire in 90 days, since you only need it for this workshop.
5. If you ever want to use Terraform with DigitalOcean again, you can regenerate the token.
6. Generate the token and it will be displayed. Don't close your browser tab, or navigate away until you complete the next step.
7. Open your shell initialization file and add the following environment variable.
    ```sh
    export DO_PAT="paste your token here"
    ```
8. Reload your shell to activate the new variable.

## Install Terraform

Visit the [How to Configure Terraform for DigitalOcean](https://docs.digitalocean.com/reference/terraform/getting-started/) page to start installation for your platform.

