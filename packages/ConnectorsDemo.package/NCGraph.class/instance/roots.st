traversal
roots
	| roots |
	self vertices isEmpty ifTrue: [ ^ {} ].
	roots := IdentitySet new.
	self vertices 
		do: [:v | v incomingConnections isEmpty ifTrue: [roots add: v]].
	roots isEmpty 
		ifTrue: 
			[roots 
				add: (self vertices 
						asSortedCollection: [:a :b | a incomingConnections size < b incomingConnections size]) 
							first].
	^roots