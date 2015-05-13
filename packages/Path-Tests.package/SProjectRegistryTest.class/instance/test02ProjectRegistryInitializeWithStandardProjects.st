tests
test02ProjectRegistryInitializeWithStandardProjects

	SProject addPredefinedProjects.
	self deny: SProject projectRegistry isEmpty.
	self assert: (SProject projectAt: #NeverUseThisSymbolAsAProjectyxnbcvejg) isNil.
	self assert: (SProject projectAt: #sunit) notNil.