def comparenote(x,y):
    if x[1]<y[1] : return 1
    if x[1]==y[1]: return 0
    return -1

fileName = raw_input("please enter filename: ")

f = open(fileName)
line = f.readline()
data=[]
while line:
    line = line.strip()
    urlindex = line.find('href=')
    if urlindex != -1:
        url = line[urlindex:].split('"')[1]
    dataindex = line.find('data-notes=')
    if dataindex != -1:
        note = line[dataindex:].split('"')[1]
        entry = [url,eval(note)]
        data.append(entry)
    line = f.readline()

data.sort(comparenote)
i=0
print "top five notes:"
for i in range(0,5):
    print "notes: ", data[i][1]

f = open("simple.html",'w')
f.write("<html><body>\n")
for i in range(0,5):
    if i !=4:
        s = '#'+str(i+1)+": <a href="+data[i][0]+'>'+str(data[i][1])+' notes</a><br><br>\n'
    else:
        s = "#"+str(i+1)+": <a href="+data[i][0]+'>'+str(data[i][1])+' notes</a>\n'
    f.write(s)

f.write("</body></html>")

f.close()

print "HTML page generated : simple.html"
