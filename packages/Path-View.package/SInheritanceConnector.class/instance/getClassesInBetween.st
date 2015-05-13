initialization
getClassesInBetween
	| superClass subClass result |
	superClass := targetMorph visualizedClass.
	subClass := sourceMorph visualizedClass. "Because of collection-lookup below"
	result := OrderedCollection new.
	
	(superClass allSubclasses includes: subClass) ifTrue: [
		| current |
		current := subClass superclass.		
		[ current = superClass ] whileFalse: [
			result add: current.
			current := current superclass ] ].
	^ result