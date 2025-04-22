# NodeJS - Ansible local dev environment

## Description

This repository contains the Ansible playbook configuration to setup the local environment with all the dependencies needed for the NodeJs developers.

## Steps to install

1. Install Ansible

   ```bash
   sudo apt update && sudo apt install ansible
   ```

2. Run

   To run all the tasks use:

   ```bash
   ansible-playbook setup_dev_env.yml
   ```

   To run a specific task by tag use:

   ```bash
   ansible-playbook setup_dev_env.yml -t node # To run only the task to install node and dependencies
   ```

3. Run with AWS Credentials (only execute if needed, this step can be done manually)

   ```bash
   ansible-playbook setup_dev_env.yml -e "aws_access_key=YOUR_ACCESS_KEY aws_secret_key=YOUR_SECRET_KEY aws_region=YOUR_REGION"
   ```

4. Verify versions

   ```bash
   aws --version
   node --version
   npm --version
   nest --version
   docker --version
   docker-compose --version
   ```

## Docker test

To test the changes in the Ansible playbook use:

```bash
docker build -t dev-env-test . # Use this command to build the container

docker run -it dev-env-test # Use this command to run the container and enter on it
```
