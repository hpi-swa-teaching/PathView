menu-actions
privateSave
	| param header |
	param := 'aClassDiagram'.
	header := savedName, ': ', param, String cr.
	(self classMorphs groupBy: [:cm | cm visualizedClass] having: [:r| true])
		associationsDo: [:association | | klass method |
			klass := association key.
			method := String streamContents: [:code |
				code nextPutAll: header.
				association value
					do: [:cm | code nextPutAll: (cm saveToCodeFor: param)]
					separatedBy: [code cr]].
			klass theMetaClass
				compile: method
				classified: SClassDiagramMorph diagramCodeCategory]