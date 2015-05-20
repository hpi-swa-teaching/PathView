private
handleMorphicEvent: anEvent eventOrType: anEventOrSymbol 
	"This is the main input to my event handling.
	anEvent is the Morphic event, translated into my coordinate system.
	anEventOrSymbol is either the same as anEvent, or is the assigned (pseudo) type which corresponds to the keys in my handlers."

	| wasHandled |
	anEvent isMouseOver ifTrue: [ anEvent hand noticeMouseOver: morph event: anEvent. ^true ].
	(#(mouseEnter mouseLeave) includes: anEvent eventType)
		ifFalse: [
			anEvent wasHandled ifTrue:  [
				self log: #alreadyHandledEvent items: { anEvent. anEventOrSymbol }.
				^true]].
	wasHandled := self handleBasicEvent: anEvent eventOrType: anEventOrSymbol eventType.
	anEvent wasHandled: wasHandled.
	^wasHandled