debug and other
viewStateHierarchy
	eventHandler ifNotNil: [ 
		StringHolder new
			acceptContents: eventHandler stateHierarchy;
			openLabel: 'State hierarchy of ', self name
	]