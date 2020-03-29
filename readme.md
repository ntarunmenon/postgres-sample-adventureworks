## Sample postgres database 

Use this docker image in case you need to spin up a quick sample postgres data base with set of tables and data populated. This should save you the effort of desinging a data model, creating tables adding data etc.

I have dockerized what is found [here](https://github.com/morenoh149/postgresDBSamples)

## Docker commands

### To build docker image

```
docker build -t postgres-adventureworks .
```
### To run the docker container.

```unix
docker run -p 7000:5432 -i   -d postgres-adventureworks
```

### To connect to schema

```
port: 7000
database: adventureworks
DB user:- adventureworks_user
DB password:- adventureworks_user
```