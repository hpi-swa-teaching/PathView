highlighting
sortedClassMorphs: aClass
	"Return a copy of the classMorphs-collection, sorted by their hierarchical relation to aClass.
	Collection-lookups are performed here, so we use #visualizedClass instead of #klass."
	
	| superclasses |
	superclasses := aClass allSuperclasses.
	^ (classMorphs
		select: [ :morph | aClass includesBehavior: morph visualizedClass ]) "Select the superclasses"
		sort: [ :classMorph1 :classMorph2 |
			(superclasses indexOf: classMorph1 visualizedClass)
			<= (superclasses indexOf: classMorph2 visualizedClass) ]