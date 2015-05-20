*connectors-debugging
haltOnlyOnce
"
Smalltalk at: #OneShotArmed ifAbsent: [true]
self rearmOneShot
"
	self doOnlyOnce: [self halt]