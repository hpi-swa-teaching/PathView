testing
fileOut: aVersion onZip: aZip

	^ [self new
		zip: aZip;
		version: aVersion;
		fileOut;
		yourself] on: Error do: [self inform: 'There was an error in ', self class name
								"Avoid not being able to commit"]