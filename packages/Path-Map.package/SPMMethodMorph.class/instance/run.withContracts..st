menu actions
run: aBlock withContracts: aBoolean
	aBoolean ifNil: [^ self].
	^ aBoolean
			ifTrue: [aBlock runWithContracts: self pathMap project projectName]
			ifFalse: [aBlock value]