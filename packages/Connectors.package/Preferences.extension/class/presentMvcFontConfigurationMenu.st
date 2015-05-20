*connectors-fonts-override
presentMvcFontConfigurationMenu
	| aMenu result |
	aMenu := CustomMenu new.
	aMenu title: 'Standard System Fonts'.
	aMenu add: 'default text font...' translated action: #chooseSystemFont.
	aMenu add: 'list font...' translated action: #chooseListFont.
	aMenu add: 'flaps font...' translated action: #chooseFlapsFont.
	aMenu add: 'menu font...' translated action: #chooseMenuFont.
	aMenu add: 'window-title font...' translated action: #chooseWindowTitleFont.
	aMenu add: 'balloon-help font...' translated action: #chooseBalloonFont.
	aMenu add: 'code font...' translated action: 	#chooseCodeFont.
	aMenu add: 'Connectors label font...' translated action: #chooseConnectorsLabelFont. 
	aMenu addLine.
	aMenu add: 'restore default font choices' action: #restoreDefaultFonts.

	(result := aMenu startUp) ifNotNil:
		[self perform: result]
