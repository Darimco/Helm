## Instructions
#### 1. Clone a repository
#### 2. Follow insturctions of README.md files in each folder


#### 3. Pay attention to the following requirements for the project:

 - A GitHub account
 - A GCP account
 - The gcloud command-line tool installed and configured with your GCP credentials
 - Docker installed on your local machine
 - Access to the SonarQube service

#### 4. Enable the following APIs:
 - Google Container Registry API
 - Cloud Build API
 - Google Cloud Storage JSON API
#### 5. Create a new service account with the following IAM roles:
 - Service Account User ( basic owner )
 - Generate a new key for the service account and download it as a JSON file.
#### 6. Add the following repository secrets to your GitHub repository:
 - PROJECT_ID: The ID of your GCP project
 - GOOGLE_DOMAIN_NAME: Your domain name.
 - SERVICE_ACCOUNT: The JSON key file for the service account created in step 5.
 - SONAR_TOKEN: The authentication token for your SonarQube instance
