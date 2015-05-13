instance creation
on: aModel with: aCollection
	^ self new
		actionModel: aModel;
		menuEntries: aCollection;
		createLabelMorph: (self getLabelFrom: aCollection);
		createMenu;
		yourself