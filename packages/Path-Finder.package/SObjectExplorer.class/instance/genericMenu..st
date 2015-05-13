menus
genericMenu: aMenu 
	|  menu morph |
	currentSelection
		ifNil: [menu := aMenu.
			menu
				add: '*nothing selected*'
				target: self
				selector: #yourself]
		ifNotNil: [
			morph := SObjectExplorationMorph 
						on: self codePane 
						title: currentSelection asString
						object: currentSelection 
						color: self codePane color.
			self codePane addObjectExplorationMorph: morph].
	^ aMenu