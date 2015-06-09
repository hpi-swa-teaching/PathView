*Path-View-Core-collecting
allSubmorphsOfKind: aClass
	
	^ self allSubmorphsSatisfying: [ :morph | morph isKindOf: aClass ]