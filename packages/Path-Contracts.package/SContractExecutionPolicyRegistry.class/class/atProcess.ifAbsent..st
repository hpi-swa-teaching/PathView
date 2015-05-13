accessing
atProcess: aProcess ifAbsent: aBlock
	^ Processes 
		at: aProcess
		ifAbsentPut: aBlock