# avenirs-referentiels
Referentiels project.

### Before launch
In the resources folder, copy and past env.properties.template into env.properties and put your own values.

You need to run init-db.sql before starting the project. (In the postgreql client, when you are connected with your postgre user, run "***\i ${PATH_TO_PROJECT}/src/main/resources/db/init-db.sql***")

See https://avenirs-esr.github.io/dev-doc/code-frameworks-tools/ for more

## How to liquibase

Please change the parameters to your settings. Be careful, the author argument needs to be after the command. (https://docs.liquibase.com/parameters/working-with-command-parameters.html) 
`liquibase --url="jdbc:postgresql://localhost:5432/avenirs_referentiels" --username="postgres" --password="postgres" --driver="org.postgresql.Driver" --defaultSchemaName="dev" --changeLogFile="./src/main/resources/db/changelog/001-create-tables.yaml" generateChangeLog  --author="Dugat"`