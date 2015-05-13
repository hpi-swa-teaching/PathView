testing
testAcceptsClassDropsFromBrowser

	self mock: #confirm: of: UIManager default class toReturn: false during: [
		self assert: [ instance submorphs isEmpty ].
		(self transferEventFor: self class) sentTo: instance.
		self assert: [ instance submorphs size = 1 ].
		self assert: [ instance submorphs first class = SClassMorph ].
		self assert: [ instance submorphs first klass = self class ]].
