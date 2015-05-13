initialization
setWeight

	self weight: (self project 
					numberOfMethodsOfClass: self sourceCodeEntity 
					withQuick: self globalOptions showAllMethods).