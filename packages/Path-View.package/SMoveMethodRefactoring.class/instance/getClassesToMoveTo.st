as yet unclassified
getClassesToMoveTo
	"Instead of querying the user for the new class, we use the class, that has been configured here."
	
	moveToClasses := { self model classFor: targetClass }.