event handling
enterHandlingDrop
	| potentialConnections nextConnection potentialTargets firstTarget |
	self log: #debug items: { 'enterHandlingDrop' }.
	
	"Find which ends we should potentially try to connect"
	potentialConnections := constraints select: [:ea | ea input isNil].
	potentialTargets := potentialConnections collect: [ :constraint |
		| localPoint targets |
		localPoint := self griddedPoint: constraint targetPoint.
		targets := self connectionTargetsAt: localPoint for: constraint.
		targets notEmpty 
			ifTrue: [ { (Sensor shiftPressed 
						ifFalse: [targets first ]
						ifTrue: [ targets last]). localPoint } ]
				ifFalse: [ { nil. nil } ]].

	self isWiring ifTrue: [
		potentialConnections size = 2 ifTrue: [
			firstTarget := potentialTargets findFirst: [ :arr | arr first notNil ].
			firstTarget = 0 ifTrue: [ firstTarget := 1 ].
			nextConnection := potentialConnections atWrap: firstTarget + 1.
			potentialConnections := potentialConnections copyFrom: firstTarget to: firstTarget.
			potentialTargets := potentialTargets copyFrom: firstTarget to: firstTarget
		]].

	potentialConnections with: potentialTargets do: 
			[:constraint :targetAndPoint | 
			| localPoint target |
			target := targetAndPoint first.
			localPoint := targetAndPoint second.
			target isNil
				ifFalse: [ constraint attachTo: target at: localPoint ]
				ifTrue: [ constraint connectToNothing; forceRedraw]].
	self
		changed;
		layoutChanged.

	(self isWiring and: [nextConnection notNil]) 
		ifTrue: 
			[| evt pos |
			evt := ActiveHand lastEvent.
			pos := self griddedPoint: (self globalPointToLocal: evt position).
			potentialConnections first lastTargetPoint: pos.
			nextConnection center: pos.
			self setProperty: #triggeredWireFinish toValue: pos.
			self trigger: #wireFinish
				withArguments: { 
						nextConnection.
						evt}].
