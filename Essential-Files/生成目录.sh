echo "<meta http-equiv='Content-Type'content='text/html;charset=utf-8'/><head>" > /usr/local/share/jupyter/voila/templates/base/static/files/files.html 
echo "<html><table>" >> /usr/local/share/jupyter/voila/templates/base/static/files/files.html 
find /usr/local/share/jupyter/voila/templates/base/static/files/. -maxdepth 2 -type f -printf '<li><a href=%f>%f</td></tr>\n' >>  /usr/local/share/jupyter/voila/templates/base/static/files/files.html
echo "</table></html>" >>  /usr/local/share/jupyter/voila/templates/base/static/files/files.html
sed  -i "s/ /%20/g" /usr/local/share/jupyter/voila/templates/base/static/files/files.html
sed  -i "s/a%20href/a href/g" /usr/local/share/jupyter/voila/templates/base/static/files/files.html 
sed  -i "s/meta%20http/meta http/g" /usr/local/share/jupyter/voila/templates/base/static/files/files.html 
