testing-container
testMethodWithContainersAllOverReally
	| obj |
	obj := SHClassA new.
	obj 
		assoc: #a -> 1 
		collection: (OrderedCollection with: 1 with: 'string') 
		dict: (Dictionary newFrom: {#a -> 1. #b -> 2})
		number: {2}.