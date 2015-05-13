updating
removeCategoryFromProject: aSystemEvent
	self project categories: (self project categories asOrderedCollection 
								remove: aSystemEvent item; 
								yourself) asArray.
	self project resetClassesCache.