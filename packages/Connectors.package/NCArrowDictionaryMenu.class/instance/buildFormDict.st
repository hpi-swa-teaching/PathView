menu commands
buildFormDict
	| formDict |
	formDict := Dictionary new.
	self glyphDictionary keysAndValuesDo: [ :k :v |
		v scale: 12.
		formDict at: k put: (v sampleFormForLineWidth: 10 borderWidth: 1). ].
	self baseDictionary: formDict.
	^formDict.
