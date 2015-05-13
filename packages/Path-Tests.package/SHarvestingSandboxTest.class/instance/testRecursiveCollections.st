testing-container
testRecursiveCollections
	| obj |
	obj := SHClassA new.
	obj b: (OrderedCollection with: {1. 2.} with: {$a. $b} with: (Set with: 'string')).