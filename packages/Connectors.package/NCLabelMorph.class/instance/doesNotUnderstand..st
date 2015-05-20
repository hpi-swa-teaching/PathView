error handling
doesNotUnderstand: aMessage
	"As much as possible, delegate all behavior to my label"
	^(label respondsTo: aMessage selector)
		ifTrue: [ 
"			Transcript nextPutAll: 'NCLabelMorph delegating '; print: aMessage; cr."
			label perform: aMessage selector withArguments: aMessage arguments ]
		ifFalse: [ super doesNotUnderstand: aMessage ]