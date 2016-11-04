#!/bin/bash

# Rebuild database

rake db:drop && rake db:create && rake db:migrate && rake db:seed
