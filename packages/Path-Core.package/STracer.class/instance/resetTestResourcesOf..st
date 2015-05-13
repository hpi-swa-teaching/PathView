test resources
resetTestResourcesOf: aTestClass
	aTestClass resources do: [:each | each reset]