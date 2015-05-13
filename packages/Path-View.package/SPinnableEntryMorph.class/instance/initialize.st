initialization
initialize
	
	super initialize.
	pinned := false.	
	pinStateVisible := true.
	self listDirection: #leftToRight.
	klass isMeta ifTrue: [
		labelMorph emphasis: TextEmphasis underlined emphasisCode ].