#Compiling the project
#We will now compile the function, compress it to a zip file (zip is the format Lambda expects) and upload it to our S3 artifact bucket created in previous step:


go get github.com/aws/aws-lambda-go/lambda
GOOS=linux go build -o faas main.go
zip faas.zip faas
aws s3 cp faas.zip s3://{my-artifact-s3-bucket-url}/
