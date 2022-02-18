#! /bin/bash

URL='http://localhost:5001'
curl -s ${URL}
RESULT=$?

if [ ${RESULT} -eq 0 ]; then 
    echo "${URL} is up"
else
    echo "${URL} is down"
fi

exit ${RESULT}