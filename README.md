# pizza

FIXME

## Prerequisites

You will need [Leiningen][] 2.0.0 or above and [Postgres][] 12.4 or above installed.

[leiningen]: https://github.com/technomancy/leiningen
[postgres]: https://www.enterprisedb.com/downloads/postgres-postgresql-downloads


## Running

Steps for running this application:
1. Login to the PostgresSQL and create database pizza. When the database is created it is necessary to restore the database with file database.backup in project folder. Right-click on the created database and select restore. Dialog will open, click filename and select a database.backup file in the application project then click restore.
2. In file db.clj set up a connection to postgressql depending on the computer.
3. To start a web server for the application, run:

    lein ring server
    
4. Finally, login :
    1. username: pera
    2. password: pera

## About this Project
You can see more on video: https://www.youtube.com/watch?v=-aNcyentiac
## License

Copyright © 2020 FIXME
