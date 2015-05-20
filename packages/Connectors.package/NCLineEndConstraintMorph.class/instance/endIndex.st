private
endIndex
	"Answer the index of the end of the line that I'm constraining"
	^firstVertex 
		ifTrue: [ 1 ]
		ifFalse: [ 2 ]