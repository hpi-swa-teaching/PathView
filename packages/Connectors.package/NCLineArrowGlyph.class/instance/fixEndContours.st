accessing
fixEndContours
	"Re-order first so that first seg ends to left of last seg."

	| reversed |
	reversed := self contours collect: 
					[:c | 
					| p1 p2 |
					p1 := c at: 3.
					p2 := c at: c size - 2.
					p1 x > p2 x].
	self contours: (self contours with: reversed
				collect: 
					[:c :rev | 
					| newC |
					newC := rev ifTrue: [c reversed] ifFalse: [c].
					newC first ~= newC last 
						ifTrue: 
							[newC := newC asOrderedCollection.
							newC addAllLast: { 
										newC last.
										newC last.
										newC first}].
					newC asArray]).
	^self contours