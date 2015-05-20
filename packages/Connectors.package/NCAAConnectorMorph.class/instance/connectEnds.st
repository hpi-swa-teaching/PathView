connection
connectEnds
	"I've been created and given an owner. If appropriate, connect my ends to Morphs that are under or on top of them."

	constraints do: 
			[:constraint | 
			| targets localPoint |
			constraint inputs isEmpty 
				ifTrue: 
					[localPoint := self griddedPoint: constraint targetPoint.
					targets := self connectionTargetsAt: localPoint for: constraint.
					targets isEmpty 
						ifFalse: 
							[constraint attachTo: targets first at: localPoint.
							self trigger: #connectEndTo with: targets first]]].
	self
		changed;
		layoutChanged