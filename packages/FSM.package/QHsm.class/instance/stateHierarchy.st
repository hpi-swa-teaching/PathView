reflection
stateHierarchy
	"Answer a String that represents my state hierarchy."

	| specific general possibleStates possibleEvents superstates |
	specific := Set 
				withAll: (self class allSelectorsUnderstood select: 
							[:ea | 
							('handle*In*' match: ea) 
								and: [(ea at: 7) isUppercase and: [(ea beginsWith: 'handleIn') not]]]).
	general := Set 
				withAll: (self class allSelectorsUnderstood select: 
							[:ea | 
							('state*' match: ea) 
								and: [(ea at: 6) isUppercase and: [(specific includes: ea) not]]]).
	general removeAll: #(#stateTop: #stateHierarchy).
	possibleStates := Set new.
	possibleEvents := Dictionary new.
	specific do: 
			[:ea | 
			| i s e |
			i := ea indexOfSubCollection: 'In' startingAt: 8.
			s := ea copyFrom: i + 2 to: ea size - 1.
			possibleStates add: s.
			e := ea copyFrom: 7 to: i - 1.
			(possibleEvents at: s ifAbsentPut: [Set new]) add: e].
	general do: 
			[:ea | 
			| s |
			s := ea copyFrom: 6 to: ea size - 1.
			possibleStates add: s].
	superstates := Dictionary new.
	possibleStates 
		do: [:s | superstates at: s put: (self state: s) superstate stateName].
	^String streamContents: 
			[:s | 
			self 
				hierarchyFrom: superstates
				andEvents: possibleEvents
				into: s
				startingAt: #Top
				level: 0]