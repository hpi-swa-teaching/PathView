connection
detachFrom: aMorph
	constraints do: [ :const |
		(const input == aMorph)
			ifTrue: [ const input: nil ]
	].