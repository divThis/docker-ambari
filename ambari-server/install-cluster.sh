#!/bin/bash

export PATH=/usr/jdk64/jdk1.7.0_67/bin:$PATH

./ambari-shell.sh << EOF
blueprint defaults
blueprint add --file blueprints/single-node-lambda.json
blueprint add --file blueprints/sandbox.json
cluster build --blueprint $BLUEPRINT
cluster autoAssign
cluster create --exitOnFinish true
EOF
