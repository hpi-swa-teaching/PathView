*connectors-queries
connectionsAtAttachmentPoint: aPoint
	"Answer a collection of all the connections to the given point (if any)"
	| retval |
	retval := Array streamContents: [ :s |
		self connections do: [ :connection |
			connection constraints do: [ :constraint |
				(constraint notNil and: [
					self flag: #TODO.	"coordinate transform"
					constraint lastTargetPoint asIntegerPoint = aPoint asIntegerPoint ])
					ifTrue: [ s nextPut: connection ]
			]
		]].
	^retval
