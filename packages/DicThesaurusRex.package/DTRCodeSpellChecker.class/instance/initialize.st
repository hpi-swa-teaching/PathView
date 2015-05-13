initialize-release
initialize 
	camelCaseParser := DTRCamelCaseParser new.	
	spellChecker := DTRHunspell instance.
	camelCaseParser addDependent: self