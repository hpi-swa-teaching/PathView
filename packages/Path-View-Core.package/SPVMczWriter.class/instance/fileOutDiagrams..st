actions
fileOutDiagrams: aProject
	
	aProject views do: [:classDiagram | | memberStream |
		memberStream := RWBinaryOrTextStream on: String new.
		classDiagram saveOnStream: memberStream.
		zip	addString: memberStream contents
			as: SPVMczWriter diagramsMember, classDiagram savedName].