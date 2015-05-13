*Path-View-collecting
allSubmorphsOfKind: aClass
	
	^ self allSubmorphsSatisfying: [ :morph | morph isKindOf: aClass ]