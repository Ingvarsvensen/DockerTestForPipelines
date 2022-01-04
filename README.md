# DockerTestForPipelines
In order to deploy via Cloud Build located in project MANAGEMENT to CloudRun located in project STAGING,PROD you will need:

In project MANAGEMENT, get email of account for xxxxxxxx@cloudbuild.gserviceaccount.com

In project STAGING and PROD add this account as princial into IAM and add Roles:

Cloud Run Admin - roles/run.admin
Service Account User - roles/iam.serviceAccountUser

In order to CloudRun located in project STAGING and PROD to PULL docker images from Artifact Registry located in project MANAGEMENT you will need:

1. In project STAGING and PROD get email of account service-xxxxx@serverless-robot-prod.iam.gserviceaccount.com
2. In project MANAGEMENT in permissions of Artifact Registry Repository, add princial from Step-1 with the following role:
- Artifact Registry Reader - roles/artifactregistry.reader

In order to CloudBuild located in project MANAGEMENT to PUSH docker images to Artifact Registry located in project MANAGEMENT you will need:

1. In project MANAGEMENT get email of account xxxxxxxx@cloudbuild.gserviceaccount.com
2. In project MANAGEMENT in permissions of Artifact Registry Repository, add princial from Step-1 with the following role:
- Artifact Registry Writer - roles/artifactregistry.writer

![image](https://user-images.githubusercontent.com/80811711/148033446-73bff077-b227-4697-859e-cbeb7afdd9b3.png)
