menu
browseMethod
	| browser colors |
	self hasSelectedItem 
		ifTrue:[browser := SBrowser fullOnClass: self selectedItem clientClass 
					       selector: self selectedItem clientSelector.
				colors := self collectAllColorsFromNodes.
				colors
					ifNotEmpty: [browser methodColors: colors].
				^ browser]