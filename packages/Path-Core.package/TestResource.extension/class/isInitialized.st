*Path-Core
isInitialized
	"Return if the singleton object has already been created or not. 
	#isAvailable includes a side effect that always creates the singleton."
	^ current notNil