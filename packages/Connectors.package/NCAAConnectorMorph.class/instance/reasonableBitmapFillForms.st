menus
reasonableBitmapFillForms
	| reasonableForms |
	reasonableForms := OrderedCollection new.
	reasonableForms 
		addAll: (BitmapFillStyle allSubInstances collect: [:f | f form]).
	reasonableForms addAll: Imports default images.
	^reasonableForms