class initialization
startUp: resuming
	"My instances no longer step the #stepCleanup method"
	resuming ifTrue: [ self allSubInstancesDo: [ :i | i stopSteppingSelector: #stepCleanup ]]