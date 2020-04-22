sam build;
sam package --output-template packaged.yaml --s3-bucket merl-workhorse-lambda-functions;
sam deploy --template-file packaged.yaml --region us-east-2 --capabilities CAPABILITY_IAM --stack-name sam-get-status-stack;
