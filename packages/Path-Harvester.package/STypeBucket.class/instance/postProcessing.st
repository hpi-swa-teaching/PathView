initialize-release
postProcessing
	{self returns. self arguments. self members} do: [:each | self simplifyEmptyTypeContainersOf: each].
				
