from mysys import executeUnix
import re
import numpy as np


optia=0.1
optib=1.1
optic=0.1
optid=1
optie=1
maxavprecision=0.3584
maxRprecision=0.3813
Rprecision=0.3813
avprecision=0.3584


for a in np.linspace(0.1,1,10):
	for b in np.linspace(1.1,4,10):
		for c in np.linspace(0.1,1,10):
			for d in np.linspace(1,10,10):
				for e in  np.linspace(1,10,10):
					#executeUnix("../app/obj/RetrievalEval,eval_param,query,"+str(a)+","+str(b)+","+str(c)+","+str(d)+","+str(e))
					executeUnix("../app/obj/RetrievalEval,eval_stemmed_nostopw_param,query_stemmed_nostopw,"+str(a)+","+str(b)+","+str(c)+","+str(d)+","+str(e))
					#result1=executeUnix("../trec_eval,qrel,result_custom")
					result2=executeUnix("../trec_eval,qrel,result_custom_stemmed_nostopw")

					flag=False
					update=False
					
					for i in result2.split("\n"):
						if flag:
							avprecision= float(i)
							flag=False
							update=True

						match=re.search(r"Average precision",i)
						if match:
							flag=True

						match=re.search(r"(Exact:\s+)([\w.]+)",i)
						if match:
							Rprecision=float(match.group(2))
							update=True

						if update:
							if(avprecision>=maxavprecision and Rprecision>=maxRprecision):
								maxavprecision=avprecision
								maxRprecision=Rprecision
								optia=a
								optib=b
								optic=c
								optid=d
								optie=e
								update=False

print maxavprecision
print maxRprecision
print "optia",optia
print "optib",optib
print "optic",optic
print "optid",optid
print "optie",optie


	





