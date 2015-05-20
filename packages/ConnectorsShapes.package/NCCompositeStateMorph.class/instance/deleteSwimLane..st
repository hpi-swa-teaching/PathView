swim lanes
deleteSwimLane: evt 
	| sr sms ix |
	sr := self stateRectangle.
	sms := sr submorphs.
	sms size < 2 ifTrue: [^self].
	sms withIndexDo: 
			[:ea :index | 
			(ea isLineMorph not 
				and: [ea bounds containsPoint: evt position]) 
					ifTrue: 
						[ea delete.
						ix := index]].
	ix ifNil: [^self].
	(sms at: ix + 1 ifAbsent: [sms at: ix - 1 ifAbsent: [^self]]) delete