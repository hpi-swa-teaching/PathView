pathMap-helper
classMorph: aClass
	| classMorph |
	classMorph := self pathMap getClassMorph: aClass.
	self assert: classMorph notNil.
	^ classMorph