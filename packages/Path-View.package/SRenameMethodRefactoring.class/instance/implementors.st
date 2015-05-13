private
implementors

	implementors isNil 
		ifTrue: [implementors := Set with: class.].
	^implementors