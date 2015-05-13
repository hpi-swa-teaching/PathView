initialization
setWeight

	self weight: (self project 
					numberOfMethodsOfCategory: self sourceCodeEntity 
					withQuick: self globalOptions showAllMethods).