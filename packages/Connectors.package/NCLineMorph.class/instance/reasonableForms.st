menus
reasonableForms
	| reasonableForms |
	reasonableForms := Imports default images asOrderedCollection.
	reasonableForms addAll: (BitmapFillStyle allSubInstances collect:[:f| f form]).
	^reasonableForms