menu actions
openInstVarAssociationTo: newClassMorph
	"The connection used to start directly from the InstVarMorph itself, but that lead to problems with the Connector-library.
	When the InstVarMorph was collapsed (e.g. using the Toggle Labels button), the connectors would loose the correct starting point and 
	jump to a random point in the diagram."
	
	SAssociationConnector
		openFor: self classMorph
		connectedTo: newClassMorph
		variableName: self variableName
		variableType: self variableType