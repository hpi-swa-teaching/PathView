public api
mutationsDo: aBlock entryPoint: aMethodReference
	| entryPointReached |
	entryPointReached := false.
	"Iterate over all covered methods and mutate the current one 
	before executing aBlock"
	self coveredMethods do: [:reference | | wrapper |
		entryPointReached := entryPointReached or: [reference = aMethodReference].
		(entryPointReached and: [self shouldMutate: reference]) ifTrue: 
			[wrapper := SContractMutationWrapper 
				on: reference methodSymbol 
				inClass: reference actualClass.
			wrapper installClosestToMethod.
			[aBlock value: reference] ensure: [wrapper uninstall]]]