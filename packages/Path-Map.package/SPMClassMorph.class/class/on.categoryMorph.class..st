instance creation
on: aTestMap categoryMorph: aCategoryMorph class: aClass

	^ (super on: aTestMap)
		categoryMorph: aCategoryMorph;
		klass: aClass;
		yourself