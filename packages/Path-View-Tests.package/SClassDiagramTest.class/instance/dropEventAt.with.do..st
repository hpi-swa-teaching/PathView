drop-event-helpers
dropEventAt: aPoint with: aClass do: aBlock

	| dropEvent |
	self mock: #confirm: of: UIManager default class toReturn: false during: [
		dropEvent := self transferEventFor: aClass.
		dropEvent contents position: aPoint.
		dropEvent sentTo: instance.
		aBlock value ]