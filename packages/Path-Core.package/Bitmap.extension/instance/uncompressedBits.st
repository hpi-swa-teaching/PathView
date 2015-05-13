*Path-Core
uncompressedBits
	| stream |
	stream := WriteStream on: OrderedCollection new.
	self writeUncompressedOn: stream.
	^ stream contents