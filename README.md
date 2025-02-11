# Local Debugging of Python AWS Lambda Functions via SAM CLI and Visual Studio Code

This project demonstrates a sample setup for debugging AWS Lambda functions with a Python runtime on a Windows host machine using the AWS Serverless Application Model (AWS SAM), Docker, and Visual Studio Code. The example features a simple Lambda function that returns a message with the current timestamp upon each execution.

### Requirements

Ensure the following tools and software are installed before proceeding:

- [Windows Subsystem for Linux 2](https://learn.microsoft.com/en-us/windows/wsl/install)
   - [Docker](https://docs.docker.com/engine/install/ubuntu/)
   - [AWS SAM](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/install-sam-cli.html)
   - [Python](https://python.org/) (v3.12)
   - [pip](https://pip.pypa.io/en/stable/installation/) (Python Package Installer)
- [Visual Studio Code](https://code.visualstudio.com/download)

### Usage

ToDo

```bash
sam local invoke AWSLambdaFunction \
  --template sam/templates/lambdaFunction/template.yml \
  --event sam/events/event.json \
  --profile default \
  --debug-port 5890 \
  --debug-args "-Xfrozen_modules=off"
```

### License

This project is licensed under the [MIT License](https://github.com/JesusdelCas99/aws-sam-nodejs-example/blob/main/LICENSE).
