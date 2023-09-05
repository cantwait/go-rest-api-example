# create github secrets token

go to github.com -> settings -> developer settings -> personal access tokens -> generate new token -> copy token

# register token in aws secrets manager

aws secretsmanager create-secret --name github-token --secret-string <token>

# how to retrieve the token

aws secretsmanager get-secret-value --secret-id github-token --query SecretString --output text

# Now, run the below command to authorize CodeBuild to access your GitHub account and replace the with your GitHub Token ID:

aws codebuild import-source-credentials --server-type GITHUB --auth-type PERSONAL_ACCESS_TOKEN --token <GITHUB-TOKEN>

aws codebuild list-source-credentials