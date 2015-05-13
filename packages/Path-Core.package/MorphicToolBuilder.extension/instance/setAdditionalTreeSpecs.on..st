*Path-Core
setAdditionalTreeSpecs: aSpec on: aWidget 
	(aSpec isKindOf: SPluggableTreeSpec)
		ifTrue: [aWidget highlightItemSelector: aSpec highlightItem;
				 steppingSelectionHighlightItemsSelector: aSpec steppingSelectionHighlightItems;
				 steppingSelectionItemSelector: aSpec steppingSelectionItem;
				 indentingListItemMorphClass: aSpec indentingListItemMorph]