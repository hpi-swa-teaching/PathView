mapping button
isTestClassSelected
	^ self selectedTestItem notNil and: [self selectedTestItem size = 1]