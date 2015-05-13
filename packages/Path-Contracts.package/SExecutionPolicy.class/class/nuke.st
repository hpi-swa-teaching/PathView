public api
nuke
	"remove policies of all processes so that they will get the new default policy"
	| processList |
	Smalltalk garbageCollectMost.
	processList := Process allSubInstances reject: [:each | each isTerminated].
	processList := WeakArray withAll: processList.
	processList do: [:each | each contractExecutionPolicy: nil].