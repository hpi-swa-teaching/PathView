building-custom-morphs
buildSteppingButtonsWithFrame: aRect offsets: anotherRect
	| specarray |
	specarray := self steppingButtons.
 	1 to: specarray size do: [:index | | spec button frame offsets w |
		spec := specarray at: index.
		button := SActionButtonIconMorph
					on: self callTreeModel
					selector: spec second
					icon: spec first.
		button enabledSelector: spec fourth.
		self windowMorph addMorph: button.
		button setBalloonText: spec third maxLineLength: 50.
		button normalColor: (Color r:1g:1b:1alpha:0.5).
		
		w := aRect width / specarray size.
		
		frame := aRect left: (aRect left + ( w * (index - 1))).
		frame := frame right: (frame left + w).
		
		w := anotherRect width / specarray size.
		
		offsets := anotherRect left: (anotherRect left + (w * (index - 1))).
		offsets := offsets right: (offsets left + w).
		
		self class setFrame: frame offset: offsets in: button.
		button hResizing: #rigid; vResizing: #rigid.
	]