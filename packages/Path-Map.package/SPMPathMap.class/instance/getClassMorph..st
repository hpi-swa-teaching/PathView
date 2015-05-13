accessing-morphs
getClassMorph: aClass
	| categoryMorph |
	categoryMorph := self rootMorph childrenMorphs 
						at: aClass instanceSide category 
						ifAbsent: [^ nil].
	^ categoryMorph childrenMorphs at: aClass instanceSide ifAbsent: [nil].