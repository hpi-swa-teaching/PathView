instance creation
on: aModel selector: aSymbol args: aCollection icon: anIconForm

	^ (self on: aModel selector: aSymbol args: aCollection)
		activeIcon: anIconForm;
		extentToIcon;
		yourself