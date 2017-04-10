#!/usr/bin/python

import cgi
from random import randint
print "Content-type: text/html"
print
print "<html><body>"
print "<title>Binary</title>"
print "<h1>Challenge time!</h1>"

print "<h2> Converting Binary to decimal:</h2>"

form = cgi.FieldStorage()
binary = form['hidden'].value
answer = int(form['answer'].value)
correct_answer = int(binary,2)
bit = int(form['bit'].value)
fill = 0
if(bit == 16): fill =4
elif(bit==64): fill=6
else: fill=8
new_binary = str(bin(randint(0,bit)))[2:]

print '<p>' + binary+ ' = '+ str(correct_answer)+'</p>'
print '<p> You Entered: '+str(answer)+"</p>"

if(answer == correct_answer):
	print '<p>' +"Correct "+"</p>"
else:
	print '<p>'+ "incorrect"+ "</p>"


print '<form action = "/cgi-bin/mathh.py" method="POST">'
print new_binary.zfill(fill) +"="
print '<input type="text" name="answer">'
print '<br>'
print 'choose #bits(number range) to try next:'
print '<p>'
print '<br>'
print '<input type = "radio" name  = "bit"  value = "16"> 4-bits[0..15]'
print '<br>'
print '<input type = "radio" name  = "bit"  value = "64"> 6-bits[0..63]'
print '<br>'

print '<input type = "radio" name  = "bit"  value = "256"> 8-bits[0..255]'
print '<br>'
print '<input type="submit" value="submit new entry">'
print '<input type = "hidden" name = "hidden" value = "' + new_binary + '">'
print '</form>'
print '</body>'
print '</html>'

