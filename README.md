# Set up Gitlab CI/CD Pipeline to deploy app to AWS EKS
> Deploy an application on AWS EKS using a GitLab CI/CD pipeline with a test integration of a Security as Code tool to automatically scan configuration files for potential security and compliance issues.

## Table of Contents
* [Directory structure](#directory-structure)
* [Technologies Used](#technologies-used)
* [Architecture](#architecture)
* [Setup](#setup)
* [Project Status](#project-status)
* [Room for Improvement](#room-for-improvement)
* [Contact](#contact)
<!-- * [License](#license) -->


## Directory structure

```bash

├── Dockerfile
├── .gitlab-ci.yml
├── .k8s
│   ├── deployment.yaml
│   └── services.yaml
└── src
	├── app.py
	└── requirements.txt
```

The application files and the Kubernetes configurations are respectively in the **src** and **.k8s** directories. and the Dockerfile and the GitLab-ci script are at the root of the directory.



## Technologies Used
- AWS
- Kubernetes
- Docker
- Gitlab CI
- python
- Gitlab
- Checkov




## Architecture
![Pipeline Image](./gitlab-ci.png "Pipeline")


## Setup
Read this [article](https://blog.davidwoglo.me/deploying-and-securing-an-app-on-aws-eks-with-gitlab-cicd-and-checkov) for the set up.




## Project Status
Project is: _no longer maintained_ .


## Room for Improvement
I remain open to any contribution and suggestion to improve my work. Do not hesitate to let me know your contribution or suggestion by opening an issue.


## Contact
Created by [@David WOGLO ](https://www.linkedin.com/in/kodjovi-david-woglo/) - feel free to contact me!


<!-- Optional -->
<!-- ## License -->
<!-- This project is open source and available under the [... License](). -->

