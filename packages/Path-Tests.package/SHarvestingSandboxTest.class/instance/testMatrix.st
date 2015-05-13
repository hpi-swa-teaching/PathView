testing-container
testMatrix
	| obj |
	obj := SHClassA new.
	obj b: (Matrix rows: 5 columns: 5 tabulate: [:row :column | row * column]).