The problem is that the line `unzip /data/data.zip` is not working for me when I run 

`docker-compose -f stack.yml --verbose  up`

I confirmed that 

- Unzip is available.
- There is a folder called `\data` which has data.zip available. 

What I expected is that the unzipped sql scripts will be available in the `\data` folder. 

Where could I have been wrong ? Why do I need a docler compose in this case. There is not multiple docker containers. So I dont need docker-compose. That is one layer of abstraction gone. 

So then what will my docker file have to do. 

```yml
# Use postgres/example user/password credentials
version: '3.2'

services:

  db:
    build:
      context: .
      dockerfile: Dockerfile
    restart: always
    environment:
      POSTGRES_PASSWORD: adventureworks_user
      POSTGRES_USER: adventureworks_user
      POSTGRES_DB: adventureworks
    ports:
        - 7000:5432
    volumes:
        - "./setup:/data"
        - "./init-script:/docker-entrypoint-initdb.d"
```

It will have to do the following. 

- Set the following environment variables `POSTGRES_PASSWORD`,`POSTGRES_PASSWORD`,`POSTGRES_DB`
- Map host port 7000 to container port 5432. 
- Copy /setup to /data. 
- Mount /init-script to docker-entrypoint-initdb.d