*connectors-attachment points
connectionTargetsWithin: delta ofPoint: globalPoint forEnd: endIndex ofConnector: aConnector do: aBlock
	"For me and each of my submorphs in a square with width of delta*2 of globalPoint
	that might like to have the given end (endIndex is 1 or 2) of aConnector attached,
	evaluate aBlock."

	| extent localPoint vicinity |
	extent := (delta * 2) asPoint.
	self allMorphsDo: [ :m |
		localPoint := m globalPointToLocal: globalPoint.
		vicinity := Rectangle center: localPoint extent: extent.
		(m isLocked not
			and: [ m visible 
			and: [ (m fullBounds intersects: vicinity) "or (m isShadowVisibleIn: vicinity)"
			and: [ (m wantsAttachmentFromEnd: endIndex ofConnector: aConnector)
			and: [ (aConnector wantsToAttachEnd: endIndex toMorph: m) ]]]])
			ifTrue: [ aBlock value: m ] ].
