menu actions
showContractViolations
	| stream |
	stream := WriteStream on: ''.
	self violations sortedElements do: [:association | 
		stream 
			nextPutAll: association value asString, 'x ';
			nextPutAll: association key description;
			nextPut: Character cr].
	self inform: stream contents.