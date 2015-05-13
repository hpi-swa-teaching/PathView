instance creation
foriCalWith: aNumber
	^ self new 
		numberOfMutations: aNumber;
		mutationFactory: (MEMutationFactory onMethodWrappers
							scope: (MEMutationScope new
								addPackage: 'ICal-Core-Abstract'; 
								addPackage: 'ICal-Core-IO'; 
								addPackage: 'ICal-Core-Model'; 
								addPackage: 'ICal-Core-Parser'; 
								addPackage: 'ICal-Core-Strategy';
								addPackage: 'ICal-Core-VCard-IO'; 
								addPackage: 'ICal-Core-VCard-Model'; 
								addPackage: 'ICal-Core-VCard-Parser'; 
								yourself))