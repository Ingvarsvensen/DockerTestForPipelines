# DockerTestForPipelines
Собираем и Деплоим Docker Image из GitHub через Cloud Build в Cloud Run

1. В MANAGEMENT, берем email аккаунта xxxxxxxx@cloudbuild.gserviceaccount.com

2. В STAGING и PROD добавить аккаунт из п.1 как princial в IAM и добавить Roles:

- Cloud Run Admin -	roles/run.admin
- Service Account User -	roles/iam.serviceAccountUser

![image](https://user-images.githubusercontent.com/80811711/147941141-3266ddc4-ea79-4634-9712-76631169f430.png)
