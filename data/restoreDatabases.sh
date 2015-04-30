#!/bin/bash

# books-prd keeps its data
for db in s509185-dev s509185-tst s509185-acc
do
    echo "Dropping $db"
    mongo $db --eval "db.dropDatabase()"
    echo "Restoring $db"
    mongorestore -d $db seed
done