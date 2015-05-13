instance creation
on: aModel selector: aSymbol icon: anIconForm

	^ (self on: aModel selector: aSymbol)
		activeIcon: anIconForm;
		extentToIcon;
		yourself