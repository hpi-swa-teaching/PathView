instance creation
restore: aClassMorph from: aDictionary
	| instance |
	instance := self new
		store: aDictionary;
		yourself.
	instance visit: aClassMorph.
	instance markInconsistencies: aClassMorph.