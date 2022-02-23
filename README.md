# Platform engineering challenge
> To be used in the live problem challenge

## Context

This code repository contains the blog rails app based on the [Getting Started with Rails guide](https://guides.rubyonrails.org/getting_started.html#creating-the-blog-application).

## Requirements

The rails app was setup using:
- ruby 2.7.3p183 (2021-04-05 revision 6847ee089d) [x86_64-linux]
- Rails 7.0.1
- Node v14.18.3
- Yarn 1.22.17
- Postgresql as a database engine. Tested with version 13.2

## Problems

There are some improvements and bug fixes that can be made in:

- `Dockerfile`
- `docker-compose.yml`
- `.github/workflows/build.yml`
- The automation of repetitive tasks

## Tasks

- [ ] Use the `Dockerfile` to produce an image suited for development and another for running in production
- [ ] Ideally the image size for running in production should be less than 1Gb (**bonus**)
- [ ] Use build arguments so we can use the same ruby version as defined in file `blog/.ruby-version` as opposed of an hardcoded image version (bonus)
- [ ] Persist the database's data for future, so that when it's the service is stopped the data is not lost
- [ ] Check if the environment variables defined in the services are valid and match expected names/values in the rails database configuration `blog/config/database.yml`
- [ ] Once all services are started, ensure that database is created and has no pending migrations (can be done by using `bin/rake db:create db:migrate`)
- [ ] Automate all repetitive tasks such as building the image, starting/stopping the services, run database migrations (**bonus**)
- [ ] Test that everything works by accessing the [blog app](http://localhost:3000/), creating an article, restarting all services, loading the article and deleting it afterwards (**bonus**)
- [ ] Adjust `.github/workflows/build.yml` so that after the image is build it's uploaded to AWS ECR (use github actions secrets `AWS_SECRET_ACCESS_KEY` and `AWS_ACCESS_KEY_ID`)
- [ ] Add another job, that depends on the build job, which would would call `kubectl` to set the image for the k8s deployment named `blog` (the kubectl config file exists locally with the name `k8s.config`)
- [ ] Add a step on this job that would monitor the deployment rollout (**bonus**)

