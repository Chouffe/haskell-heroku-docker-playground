#!/bin/bash

cat > ~/.netrc << EOF
machine api.heroku.com
  login $HEROKU_LOGIN
  password $HEROKU_PASSWORD
machine git.heroku.com
  login $HEROKU_LOGIN
  password $HEROKU_PASSWORD
EOF

heroku login
docker login --username=$HEROKU_LOGIN --password=$HEROKU_PASSWORD registry.heroku.com
