#!/bin/bash

# change the path to your html file
# it should be inside of a docker volume OR another web accessible site
HTMLFILE=/var/lib/docker/volumes/<WEBVOLUME>/_data/<WEBSITE>/stats.html

rm -rf $HTMLFILE

echo "<html><head><link rel='stylesheet' type='text/css' href='stats.css'></head>" >> $HTMLFILE;
echo "<table class='greyGridTable'>" >> $HTMLFILE;
echo "<thead><th>Container</th><th>Memory</th><th>Memory %</th><th>CPU %</th></thead>" >> $HTMLFILE;
docker stats --no-stream --format "<tr><td>{{ .Name }}</td><td>{{ .MemUsage }}</td><td>{{ .MemPerc }}</td><td>{{ .CPUPerc }}</td></tr>" |
tee -a $HTMLFILE;
echo "</table>" >> $HTMLFILE;
echo "<br><span>File generated: $(date)</span>" >> $HTMLFILE;
