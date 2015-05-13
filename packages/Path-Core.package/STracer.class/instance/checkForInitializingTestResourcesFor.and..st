running
checkForInitializingTestResourcesFor: anEntryPoint and: aTestClass
	| lastClass |
	lastClass := aTestClass.									
	anEntryPoint isTestCase
		ifTrue: [
			(lastClass notNil and: 
				[lastClass ~= anEntryPoint testClass])
					ifTrue: [self resetTestResourcesOf: lastClass.
							lastClass := nil].
			lastClass 
				ifNil: [self initializeTestResourceOf: anEntryPoint testClass.
					lastClass := anEntryPoint testClass]].
	^ lastClass