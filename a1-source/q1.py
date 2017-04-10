# read input from user
inputfileName = raw_input ("Please Enter File Name:")
#create the output file name
outputfileName = inputfileName.replace('.html','_ouput.html')
# open and read the file as a whole string
inputFile = file(inputfileName)
input = inputFile.read()
inputFile.close()
# delete all the span tags
output = input.replace('<span>','').replace('</span>','')
# open file and write
outputFile = file(outputfileName,'w')
outputFile.write(output)
outputFile.close()
print "output file created :",outputfileName
