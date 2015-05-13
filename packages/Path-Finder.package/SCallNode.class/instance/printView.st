printing
printView

	| result |
	(self selectedView == #classes 
		and: [((self views at: #classes) asString = (self views at: #receiver) asString) not]) 
			ifTrue: [^ (self views at: #receiver) asString, 
						'(', (self views at: #classes) asString, ')'].
	self selectedView == #identities
		ifTrue: [result := (self views at: #receiver) asString, 
					'(', (self views at: #identities) asString, ')'.
				((self views at: #classes) asString = 
					(self views at: #receiver) asString) not
						ifTrue: [result := result, '(', (self views at: #classes) asString, ')'].
				^ result	].
	^ (self views at: self selectedView) asString.

	