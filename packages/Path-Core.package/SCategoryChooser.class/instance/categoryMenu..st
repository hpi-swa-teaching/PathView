building
categoryMenu: aMenu

	^ aMenu
		title: 'Categories';
		add: 'Select all' action: #selectAll;
		add: 'Select inversion' action: #selectInverse;
		add: 'Select none' action: #selectNone;
		yourself.