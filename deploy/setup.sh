#!/bin/bash

# use admin;
# db.createUser({ user: 'root', pwd: 'rootyaya12', roles: [ { role: "userAdminAnyDatabase", db: "admin" } ] });
mongo <<EOF

use dumall;
db.createCollection("goods");
db.createCollection("users");

EOF

mongoimport --db dumall --collection goods --file /usr/local/work/dumall-goods.json
mongoimport --db dumall --collection users --file /usr/local/work/dumall-users.json