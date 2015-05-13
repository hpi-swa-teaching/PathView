accessing
requiresOldObject
	"Lazy initialization should only take place if a compiled method sneaked into the 	system	which has not been compiled through tools with Dynamic Contract support"
	^ requiresOldObject ifNil: 
		[requiresOldObject := SContract requiresOldObjectFor: self afterMethod]