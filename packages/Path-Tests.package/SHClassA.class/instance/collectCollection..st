methods
collectCollection: aCollection
	"Enforce a closure, and force the closure to access external state."
	
	^ aCollection collect: [ :each | | oink gunk | aCollection includes: each ]