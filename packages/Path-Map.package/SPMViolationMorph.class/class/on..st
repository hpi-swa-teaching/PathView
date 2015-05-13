instance creation
on: aCollectionOfExceptions
	^ self new
		violations: aCollectionOfExceptions;
		createLabel;
		yourself