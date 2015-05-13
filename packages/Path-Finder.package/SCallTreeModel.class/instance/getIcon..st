spec commands
getIcon: aCallNode 
	| icon color descColor |
	color := self getIconColorFor: aCallNode.
	descColor := self getSubIconColorFor: aCallNode.
	((color isNil
				or: [color = Color white])
			and: [(descColor isNil
						or: [descColor = Color white])
					and: [aCallNode hasViolations not]])
		ifTrue: [^ nil].
	color
		ifNil: [color := Color white].
	icon := Form extent: 16 @ 15 depth: 32.
	icon fillColor: color.
	(descColor isNil not and: [descColor ~= Color white]) ifTrue: [
			icon fill: (7@6 corner: 15@14) fillColor: descColor. 
		].
	aCallNode hasViolations
		ifTrue: [icon := self drawExclamationMarkOn: icon].
	^ icon