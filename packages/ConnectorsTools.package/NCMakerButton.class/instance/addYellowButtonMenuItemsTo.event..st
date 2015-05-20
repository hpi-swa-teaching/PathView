menus
addYellowButtonMenuItemsTo: aMenu event: evt
	| sketch |
	sketch := self findA: SketchMorph.
	aMenu
		defaultTarget: self;
		add: 'move' translated target: evt hand selector: #attachMorph: argument: self;
		add: 'delete' translated target: self selector: #dismissMorph;
		add: 'resize' translated target: self selector: #resizeMorph: argument: evt;
		addLine;
		add: 'properties...' translated target: self selector: #openAPropertySheet.

	sketch ifNotNil: [
		aMenu
			add: 'resize image' translated target: sketch selector: #resizeMorph: argument: evt;
			add: 'recolor pixels of color...' translated target: sketch selector: #recolorPixelsOfColor: argument: evt;
			add: 'erase pixels of color...' translated target: sketch selector: #erasePixelsOfColor: argument: evt;	
			addLine.
	].

	target ifNotNil: [
		aMenu add: 'replace target' translated target: self selector: #replaceTarget.
		aMenu add: 'update image' translated target: self selector: #updateImage.
		((owner isKindOf: NCPartsBin) not) ifTrue: [
			self isLabeled
			ifTrue: [ aMenu add: 'remove label' translated target: self selector: #beLabeled: argument: false ]
			ifFalse: [ aMenu add: 'add label' translated target: self selector: #beLabeled: argument: true ]
		]
	].

	aMenu add: 'change action selector' translated action: #setActionSelector.
	aMenu add: 'change arguments' translated action: #setArguments.
	aMenu add: 'change when to act' translated action: #setActWhen.
	self world ifNil: [ ^aMenu ].
	((self world rootMorphsAt: evt hand targetOffset) size > 1) ifTrue:
		[aMenu add: 'set target' translated action: #setTarget:].
	
	target ifNotNil: [ | sub |
		(target hasYellowButtonMenu)
			ifFalse: [^aMenu ].
		sub := MenuMorph new.
		sub defaultTarget: target.
		target addYellowButtonMenuItemsTo: sub event: evt.
		aMenu addLine; add: (target externalName) subMenu: sub.
	].