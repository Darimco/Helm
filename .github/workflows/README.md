### Modify the values of the environment variables in the docker.yml file to match your project setup:

  - repo: The URL of your project repository
  - region: The GCP region where you want to deploy your application (e.g., us-central1)
  - app_name: The name of your application (e.g., spring-petclinic-now)
  - app_version: The version of the application to deploy (e.g., main)
  - project_id: The ID of your GCP project (same as the PROJECT_ID repository secret)
  - google_domain_name: Your domain name
  - environment: The name of your environment
  - tag_new_version: A unique tag for the new version of the application (e.g., ${GITHUB_SHA})
  - artifact_repository:The name of artifact repository
  - enable_sonar: Whether to use SonarQube for code quality analysis (e.g., true or false)
  - sonar_organization: The organization ID for your SonarQube instance
  - sonar_projectKey: The project key for your SonarQube instance
  - sonar_login: The authentication token for your SonarQube instance
