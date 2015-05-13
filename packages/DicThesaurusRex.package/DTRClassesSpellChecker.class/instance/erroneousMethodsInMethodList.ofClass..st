spell checking
erroneousMethodsInMethodList: aMethodList ofClass: aClass 
	| result errors |
	result := OrderedCollection new.
	(Smalltalk classNamed: aClass) methodDict
		valuesDo: [:method | (aMethodList includes: (method literalAt: method literals size - 1))
				ifTrue: [errors := spellChecker checkSpellingOf: method getSource asString.
					errors
						ifNotEmpty: [result add: method]]].
	^ result