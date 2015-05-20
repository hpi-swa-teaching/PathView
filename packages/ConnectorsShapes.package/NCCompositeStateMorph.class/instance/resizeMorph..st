meta-actions
resizeMorph: evt
	(self textRectangle bounds containsPoint: evt position)
		ifTrue: [ self textRectangle resizeMorph: evt ]
		ifFalse: [ super resizeMorph: evt ]