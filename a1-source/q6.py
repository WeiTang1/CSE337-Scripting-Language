import sys
# readfile fun for read and pharse line to dictionary
def readfile(filename):
    file = open(filename)
    line = file.readline()
    data = []
    while line:
        # line = line.replace('\n','')
        dic={}
        linelist = line.split('\t')
        dic["lastname"] = linelist[0]
        dic["firstname"] = linelist[1]
        dic["email"] = linelist[2]
        dic["ID"] = linelist[3]
        dic["tel"] = linelist[4]
        data.append(dic)
        line = file.readline()
    file.close
    return data
# help function for convert a dictionary to string
def toString(element):
    strlist = []
    strlist.append(element["lastname"])
    strlist.append(element["firstname"])
    strlist.append(element["email"])
    strlist.append(element["ID"])
    strlist.append(element["tel"])
    return '\t'.join(strlist)
# data1 will contain the record from first file
# data2 will contain the record from second file
data1,data2=[],[]
data1 = readfile(sys.argv[1])
data2 = readfile(sys.argv[2])
old = open("old.txt",'w')
current = open ('current.txt','w')
new = open('new.txt','w')
for element1 in data1:
    #each element in old file
    for element2 in data2:
        #each element in new file
        if element1['lastname'] == element2['lastname'] and element1['firstname'] == element2['firstname']:
            # element1 in both file write element 1 to current file.
            current.write(toString(element1))
            # delete the entry from data2 so that data2 only contains records that only in new file.
            data2.remove(element2)
            break;
    # else statement wil execute if the for loop continue without break,
    # that means element1 is not in element 2 so write to old file
    else:
        old.write(toString(element1))

#write to new file.
for element2 in data2:
    new.write(toString(element2))

old.close()
new.close()
current.close()
print "old.txt , new.txt , current.txt created "

# data1 = []
# firstFile = open(sys.argv[1])
# line = firstFile.readline()
# while line:
#     line = line.replace('\n','')
#     dic={}
#     linelist = line.split('\t')
#     dic["lastname"] = linelist[0]
#     dic["firstname"] = linelist[1]
#     dic["email"] = linelist[2]
#     dic["ID"] = linelist[3]
#     dic["tel"] = linelist[4]
#     data1.append(dic)
#     line = firstFile.readline()
# firstFile.close()
#
# print data1
#
# data2=[]
# secondFile = open(sys.argv[2])
# line = secondFile.readline()
# while line:
#     line = line.replace('\n','')
#     dic={}
#     linelist = line.split('\t')
#     dic={}
#     dic["lastname"] = linelist[0]
#     dic["firstname"] = linelist[1]
#     dic["email"] = linelist[2]
#     dic["ID"] = linelist[3]
#     dic["tel"] = linelist[4]
#     data2.append(dic)
#     line = secondFile.readline()
# secondFile.close()
# print data2
