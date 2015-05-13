callgraph
getCallStack

	| callStack currentNode |
	callStack := OrderedCollection new.
	currentNode := self.
	callStack addFirst: currentNode.
	[currentNode fromSender notNil] whileTrue: [
		currentNode := currentNode fromSender.
		callStack addFirst: currentNode].
	^ callStack