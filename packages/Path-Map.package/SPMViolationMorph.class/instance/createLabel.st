initialization
createLabel
	| stream |
	stream := WriteStream on: ''.
	self violations do: [:each | stream 
								nextPutAll: each shortDescription; 
								nextPutAll: String cr].
	self labelMorph: (SLabelMorph label: stream contents).