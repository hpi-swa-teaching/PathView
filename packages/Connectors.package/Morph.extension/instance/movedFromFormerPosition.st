*connectors-dropping/grabbing
movedFromFormerPosition
	"Answer the distance that I have been moved from my former position, as a Point"
	| formerPos |
	(formerPos := self formerPosition) ifNil: [ ^0@0 ].
	^self position - formerPos