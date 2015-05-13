updating
update: what
	what ifNil:[^self].
	what == self highlightItemSelector ifTrue:[
		self refreshHighlighting.
		^self].
	what == self getIconSelector ifTrue:[
		self refreshIcons.
		^self].
	what == #expandAllOfSelectedNode ifTrue: [
		self expandAllOfSelectedNode.
		^ self].
	what == #stepping ifTrue: [
		self refreshSteppingVisualization.
		^ self].
	^super update: what