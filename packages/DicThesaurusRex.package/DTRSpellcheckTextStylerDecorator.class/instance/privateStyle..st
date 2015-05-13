private
privateStyle: aText 
	| spellingErrors |
	view okToStyle
		ifTrue: [super privateStyle: aText].
	view okToSpellcheck
		ifFalse: [^ self].
	spellingErrors := self spellChecker checkSpellingOf: aText string.
	self addAttributesTo: spellingErrors in: aText
