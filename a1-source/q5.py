# compare function
def compareIns(x,y):
    if x.lower() < y.lower():return -1
    if x.lower() == y.lower():return 0
    return 1

data = []
for i in range(4):
    print "Please enter string No." , i+1, ':'
    string= raw_input()
    data.append(string)

print "before sort",data
data.sort(compareIns)
print "after sort",data
