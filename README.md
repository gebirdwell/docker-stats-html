# docker-stats-html
A quick docker stats script &amp; html to use to see memory &amp; cpu

I have a few docker servers in Lightsail and I haven't found an easy way to monitor memory usage, so I worked up a quick bash script to generate HTML of docker stats and throw it into a web frontend page.  Nothing fancy, figured I would make this public in case anyone else wanted a lazy mode on doing this.

1. Upload the script to your docker HOST server.
2. Upload the CSS to the docker volume & folder you are going to generate the html in.
2. Change the paths to generate the html page into the same docker volume.
3. Set the script to run every X using crontab.
4. Boom, you get a webpages of server stats in a container.
