#!/bin/bash
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u rrragul -p @Ragul@1403
    docker tag test rrragul/project
    docker push rrragul/project
    
    
