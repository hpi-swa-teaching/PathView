attachments
attachTo: aMorph at: myPoint 
	"myPoint is in my coordinate system. 
	 
	Precedence of preferences: 
	1. Attachment point on embedded pin, if any 
	2. My preference 
	3. aMorph's preference 
	4. aMorph's default 
	"
	| pref spec itsPoint |
	aMorph == self	"ignore self-connections"
		ifTrue: [^ self].

	self stopStepping.

	"check for embedded pins first (overrides my preference)"
	itsPoint := aMorph globalPointToLocal: (self localPointToGlobal: myPoint).
	spec := aMorph attachmentPointSpecNearest: itsPoint.
	spec first == #attachmentPointForEmbeddedMorph:
		ifTrue: [self connectToMorph: spec second usingSpec: {#attachmentPointWhenEmbedded}]
		ifFalse: [
			"check for my preference, if any"
			self input: aMorph.
			pref := self reAnchorPreferredConnectionTo: aMorph at: myPoint.
			(pref isNil or: [pref first == #noConnectionPreference])
				ifFalse: [self perform: pref first withArguments: pref allButFirst]
				ifTrue: [pref := aMorph preferredConnection.
					pref
						ifNil: [aMorph attachFrom: self at: itsPoint]
						ifNotNil: [self perform: pref first withArguments: pref allButFirst]]].

	self startStepping