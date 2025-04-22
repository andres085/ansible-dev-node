### Install Ansible

```bash
sudo apt update && sudo apt install ansible
```

### Run

```bash
ansible-playbook setup_dev_env.yml
```

### Run with AWS Credentials (only execute if needed, this step can be done manually)

```bash
ansible-playbook setup_dev_env.yml -e "aws_access_key=YOUR_ACCESS_KEY aws_secret_key=YOUR_SECRET_KEY aws_region=YOUR_REGION"
```

### Verify versions

```bash
aws --version
node --version
npm --version
nest --version
docker --version
docker-compose --version
```

### Docker test

```bash
docker build -t dev-env-test .

docker run -it dev-env-test
```
