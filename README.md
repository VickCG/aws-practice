# aws-practice
Practicing Amazon web services, building infrastructure, CI/CD pipeline, ...



### Installation
- AWS CLI: reference https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html
- AWS SAM (Serverless application model) reference https://aws.amazon.com/vi/serverless/sam/

### Initialize project
Open Terminal, go to project file then run in terminal:
```sam init --runtime python3.7```

### Handle Lambda function by SAM
#### Build & deploying
- Build: Make sure you have created bucket in S3, run below command for building lambda function:

```
sam build
```
Then
```
sam package --template-file template.yaml \
--output-template-file package.yaml \
--s3-bucket {Bucketname}
```

- Deploy:
```
sam deploy --template-file package.yml \
--stack-name { CloudFormation-stack-name } \
--capabilities CAPABILITY_IAM
```

You also run the `build_and_deploy.sh` bash file to deploy. It's summary of the above steps.

#### Testing locally
 
You have to installed docker and already run docker deamon.
Testing lambda function locally by sam invoke:
```
sam local invoke {Lambda-function-name}
```


