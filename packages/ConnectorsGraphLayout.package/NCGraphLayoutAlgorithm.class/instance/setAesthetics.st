aesthetics
setAesthetics
	self edges size < (2 * self nodes size) 
		ifTrue: 
			[self addAesthetic: #aeCentripetal withWeight: 0.1.
			self addAesthetic: #aeEdgeFlowHang withWeight: 0.5.
			self addAesthetic: #aeMinEdgeLength withWeight: 0.2.
			self addAesthetic: #aeNodeRepulsion withWeight: 0.3.
			self addAesthetic: #aeEdgeRepulsion withWeight: 0.3.
			self addAesthetic: #aeSpringEdgeLength withWeight: 0.2]
		ifFalse: 
			[self addAesthetic: #aeCentripetal withWeight: 0.9.
			self addAesthetic: #aeEdgeFlowHang withWeight: 0.1.
			self addAesthetic: #aeMinEdgeLength withWeight: 0.1.
			self addAesthetic: #aeNodeRepulsion withWeight: 0.9.
			self addAesthetic: #aeEdgeRepulsion withWeight: 0.3.
			self addAesthetic: #aeSpringEdgeLength withWeight: 0.1]