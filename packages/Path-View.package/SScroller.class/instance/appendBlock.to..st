private
appendBlock: newBlock to: oldBlock
	
	^ [ :arg1 :arg2 |
		{ oldBlock. newBlock } select: #notNil thenDo: [ :block |
			block valueWithPossibleArgs: { arg1. arg2 } ] ]