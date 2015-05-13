test-streams
testStreams2

	object myValue2: (WriteStream on: OrderedCollection new).
	object myValue2: nil.
	object myValue2: (ReadStream on: 'abcdef').