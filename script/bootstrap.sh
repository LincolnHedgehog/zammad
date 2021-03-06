#!/bin/bash

bundle install --jobs 8

rm -rf tmp/cache*

export Z_LOCALES='en-us:de-de'

rake db:drop
rake db:create
rake db:migrate
rake db:seed
