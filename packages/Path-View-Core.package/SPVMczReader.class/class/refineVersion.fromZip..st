as yet unclassified
refineVersion: aVersion fromZip: aZip
	
	[self new
		version: aVersion;
		zip: aZip;
		load] on: Error do: [self inform: 'There was an error in ', self class name
							"Avoid not being able to commit"]