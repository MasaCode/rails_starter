# Rails Starter Template
**This template is to set up ruby on rails project easier for developer**


## How to set up Rails project from scratch

**Step 1 Clone this template from GitHub repository**

- You can clone it by `git clone https://github.com/MasaCode/rails_starter.git`

**Step 2 Create a project**
- Create a project by `docker-compose run app rails new . --force --database=mysql`

**Step 3 Build docker image**
- Build you docker image by `docker-compose build`

**Step 4 Start docker container**
- Start docker container by `docker-compose up -d`

**Step 5 Adjust your `config/database.yml`**
- Modify `username`, `password`, `host`, `database` variables

```yml
default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: {Your MYSQL_USER}
  password: {Your MYSQL_PASSWORD}
  host: db

development:
  <<: *default
  database: {Your MYSQL_DATABASE}
```

**Step 6 See rails project running**
- Access to `http://localhost` and see it running!


## How to set up already created project

**Step 1 Clone project from the GitHub repository**
- Clone project by `git clone {your repository url}`

**Step 2 Build docker image**
- Build docker image by `docker-compose build`

**Step 3 Start docker container**
- Start docker container by `docker-compose up -d`

**Step 4 Migrate database structure**
- Migrate database by `docker-compose run app rake db:create db:migrate`

**Step 5 See rails project running**
- Access to `http://localhost` and see it running!
