#!/bin/sh
aws cloudformation package --template-file ./src/cfn/template.yaml --s3-bucket matteo-rekognition-demo-test --output-template-file ./dist/template.yaml
aws cloudformation deploy --template-file ./dist/template.yaml --region eu-west-1 --capabilities CAPABILITY_IAM --parameter-overrides CollectionId=RekoDemo6 --stack-name rekodemo6 