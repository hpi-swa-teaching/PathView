multi-window support
openSaved: aString

	| classes |
	self savedName: aString.
	classes := ((self systemNavigation allImplementorsOf: aString asSymbol asMutator)
					collect: #actualClass) collect: #theNonMetaClass.
	openMutex critical: [
		classes do: [:klass | klass perform: aString asSymbol asMutator with: self]].
	self dirty: false.
	currentState := nil.
	self saveState