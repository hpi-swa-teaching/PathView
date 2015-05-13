*Path-Core
complexity
	| type complexity |
	complexity := self startpcsToBlockExtents keys size.
	self initialPC to: self endPC 
		do: [:each | 
			type := (self at: each) // 16.
			(type = 10 or: [type = 9])
				ifTrue: [complexity := complexity + 1]].
	^ complexity