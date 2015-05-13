instance creation
covering: aSProject
	"returns a DCContractInjector instance for the given classes
	which will generate pre- and postconditions as well as invariants"
	| instance knownMethods |
	instance := self new.
	knownMethods := Dictionary new.
	aSProject allClasses do: [:class | knownMethods at: class put: class selectors].
	instance 
		methodsInScope: knownMethods;
		typesBucket: aSProject typesBucket;
		valueRangeBucket: aSProject valueRangeBucket;
		groupName: aSProject projectName.
		
	^ instance
