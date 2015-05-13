testing
testCollectCollection
	| jm |
	jm := SHClassA new.
	self
		assert: (jm collectCollection: #( 1 2 3 )) = #( true true true )