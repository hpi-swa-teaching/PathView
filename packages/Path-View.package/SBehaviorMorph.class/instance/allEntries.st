layout and labels
allEntries
	"Collect all methods from the category-morphs."
	
	^ entries
		ifNil: [ #() ]
		ifNotNil: [ (entries collect: #allEntries) asArray flatten asOrderedCollection ] "Work around a bug (?) when flattening OrderedCollections. WriteStream tries to create an OrderedCollection with a certain size, which does not work."