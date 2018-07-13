### Configurations

All the database and connection configuration is done by the `couchimport`. Just check the documentation at npm.

### Installation

``` sudo npm i -g couchimport```

Set file permissions:

``` sudo chmod 777 *.sh```

##### Using couch with docker
```sudo docker run -d -p 5984:5984 -v ~/.couchdb/data:/opt/couchdb/data couchdb```

### Usage
Just run the generator command and them the import command:
```bash
./generate_file.sh
./import.sh
```