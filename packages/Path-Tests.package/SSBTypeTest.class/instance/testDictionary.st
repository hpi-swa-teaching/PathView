as yet unclassified
testDictionary
	| d dictionary |
	d := SSBClassD new.
	dictionary := Dictionary new 
					at: 1 put: #abc; 
					yourself.
	d myValue3: dictionary.
	^ d myValue