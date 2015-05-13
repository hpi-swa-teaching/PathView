testing
test04ContentsOfStream
	| property |
	self run: SSBValueRangeTest with: #testStreams2.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property contents = (Set with: OrderedCollection with: ByteString).
