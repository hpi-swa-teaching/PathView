private
add: aChange to: aCollection
	| node |
	aChange change changes do: [:each |
		aChange change == each ifFalse: [
			node := (self class on: each) parent: aChange.
			aCollection addLast: node.
			self add: node to: aCollection]].
	^ aCollection