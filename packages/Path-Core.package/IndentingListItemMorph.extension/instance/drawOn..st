*Path-Core-override
drawOn: aCanvas

	
	| tRect sRect columnScanner columnLeft |
	tRect := self toggleRectangle.

	sRect := self stringRectangle withLeft: tRect right + 4.
	self drawToggleOn: aCanvas in: tRect.
	self drawRectangleOn: aCanvas in: sRect.

	icon isNil ifFalse:[
		aCanvas
			translucentImage: icon
	
			at: sRect left @ (self top + (self height - icon height // 2)).
	

		sRect := sRect left: sRect left + icon width + 2.
	].

	(container columns isNil or: [(contents asString indexOf: Character tab) = 0]) ifTrue: [
		sRect := sRect top: sRect top + sRect bottom - self fontToUse height // 2.
		aCanvas drawString: contents asString in: sRect font: self fontToUse color: color.
	
	] ifFalse: [
		columnLeft := sRect left.
		columnScanner := ReadStream on: contents asString.
		container columns do: [ :width | | columnRect columnData |
			columnRect := columnLeft @ sRect top extent: width @ sRect height.
			columnData := columnScanner upTo: Character tab.
			columnData isEmpty ifFalse: [
				aCanvas drawString: columnData in: columnRect font: self fontToUse color: color
.
			].
			columnLeft := columnRect right + 5.
		].
	]
