callTree
addProfileInformation: aValue node: anId

	(self getNode: anId) profiles at: self profilingMode put: aValue.