#!/usr/bin/python

import cgi
import string


print "Content-type: text/html"
print
print "<html><body>"
print "<title>Happy Birthday Song</title>"
print "<h1>Song:</h1>"

form = cgi.FieldStorage()

if not form:
	reply = "You have to enter a name"
else:
 	#figure out our reply
	line = form['line'].value

print '<p> Happy Birthday to you,'
print '<p> Happy Birthday to you,'
print '<p>Happy birthday dear ' + line
print '<p> Happy Birthday to you.'
print '</body>'
print '</html>'