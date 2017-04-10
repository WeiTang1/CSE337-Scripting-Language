def listDiff(x,y):
    z = []
    for element1 in x:
        for element2 in y:
            if element1 == element2:
                # element 1 is in second list
                break
        # if no break happened that means element1 is not in second list so add to z
        else:
            z.append(element1)
    return z
# union of the two list is just the second list + the difference of the two list
def listUnion(x,y):
    return y+listDiff(x,y)


list1 = ['a','b','c','d','e']
list2 = ['d','e','f','g','h']
print "list1 ",list1
print "list2 ",list2
print "differnece: ", listDiff(list1,list2)
print "union :", listUnion(list1,list2)
