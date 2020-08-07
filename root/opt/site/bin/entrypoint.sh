#!/bin/bash

OUTFILE="/opt/site/code/index.html"

echo "<article>" >> ${OUTFILE}
echo "<h1>ENV VARS</h1>" >> ${OUTFILE}

for var in $(printenv)
do
  echo "<div>" >> ${OUTFILE}
  echo "  <p>${var}</p>" >> ${OUTFILE}
  echo "<div>" >> ${OUTFILE}
done

echo "</article>" >> ${OUTFILE}

# Start Nginx
echo "Starting NGINX"
/sbin/nginx