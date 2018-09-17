## Rails Starter Template
- This template is to set up ruby on rails easier


### How to set up with this Template

1. Make a directory for the rails project
2. Download this template from GitHub repository to the directory
3. Change `Dockerfile` 's directory name from `rails_starter` to `your directory name`
4. Modify `docker-compose.yml` to change `web` container's volume and `datastore` name
5. Build docker image with `docker-compose build`
6. Create your project with `docker-compose run web rails new . --force --database=mysql`
7. Build docker-compose again to get missing gem with `docker-compose build`
8. Run docker with `docker-compose up -d`
9. Modify `config/database.yml` to set Database variables
10. Create your database with `docker-compose run web rake db:create`
11. Access to `localhost:3000` and see it running!
