import subprocess as sub

def executeUnix(command):
	com_array=command.split(",")
	#print com_array
	p0=sub.Popen(com_array,stdout=sub.PIPE)
	return p0.communicate()[0].strip('\n')

def executeUnix2(command,command2):
	com_array=command.split(",")
	com_array2=command2.split(",")
	p0=sub.Popen(com_array,stdout=sub.PIPE)
	p1=sub.Popen(com_array2,stdin=p0.stdout,stdout=sub.PIPE)
	p0.stdout.close()
	return p1.communicate()[0].strip('\n')

def write2log(logname,comment):
	log=open("Log/"+logname,"a")
	log.write(comment)
	log.close()





