classes
methodsPerClass: aClass withQuick: aBoolean
	aBoolean ifFalse: [^ (aClass methodDict keys 
							select: [:each | | method |
								method := (aClass >> each).
								method isQuick not and: [method isAbstract not]])
									sorted].
	^ aClass methodDict keys sorted