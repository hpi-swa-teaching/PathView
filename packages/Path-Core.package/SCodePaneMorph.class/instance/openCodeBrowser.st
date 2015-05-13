button actions
openCodeBrowser
	| browser colors |
	browser := Browser fullOnClass: self callNode clientClass selector: self callNode clientSelector.
	colors := self callTreeModel collectAllColorsFromNodes.
	colors
		ifNotEmpty: [browser methodColors: colors].