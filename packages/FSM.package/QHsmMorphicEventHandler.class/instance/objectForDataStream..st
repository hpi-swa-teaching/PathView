objects from disk
objectForDataStream: refStrm
	refStrm replace: event with: nil.
	refStrm replace: eventQueue with: nil.
	refStrm replace: firstClickDown with: nil.
	^self