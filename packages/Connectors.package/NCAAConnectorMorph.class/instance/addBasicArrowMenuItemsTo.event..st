menus
addBasicArrowMenuItemsTo: aMenu event: evt

	aMenu addLine.
	aMenu add: '---' action:  #makeNoArrows.
	aMenu add: '-->' action:  #makeForwardArrow.
	aMenu add: '<--'  action:  #makeBackArrow.
	aMenu add: '<->' action:  #makeBothArrows.
	aMenu add: 'arrow sizes' translated action: #changeArrowScaleInteractively:
