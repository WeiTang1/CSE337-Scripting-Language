# i: i predict c = [[1,2],3]
# ii: the result doesn't match my prediction.
# explaination: because c=b[:] is not complete true copy, it still contains a's reference to [1,2]
#               However, in c it still have a as a reference to [1,2], so when a[0]=7, c also change.
#               when b[1] = 8, it only affect b, because c doesn't refer to b.
#iii:
print "i, ii, iii answers in comment"
print 'iii:'
import copy
a=[1,2]
b=[a,3]
c=copy.deepcopy(b)
print "after make true copy of C"
print "change a[0]=7 and b[1]=8"
a[0]=7
b[1]=8
print "a = ",a, "b = ",b
print "after change were made"
print 'c is',c
# answer c is [[1,2],3]

print 'iv:'
level1 = [1,2,3]
level2 = [level1,4]
level3 = [[level1,level2],4]
print 'level 1:',level1
print 'level 2:',level2
print 'level 3:',level3
truecopy = copy.deepcopy(level3)
print 'truecopy',truecopy
level1[0]=9
level2[1]=8
print 'after change level 1 and level 2:'
print 'level 3:', level3
print 'truecopy:',truecopy
