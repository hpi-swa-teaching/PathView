methods
assoc: anAssoc collection: aCollection dict: aDictionary number: aNumber
	| assoc coll dict num |
	assoc := anAssoc.
	coll := aCollection.
	dict := aDictionary.
	num := aNumber.
	self b: assoc.
	self b: coll.
	self b: dict.
	self b: num.
	^ {assoc. coll. dict. num}