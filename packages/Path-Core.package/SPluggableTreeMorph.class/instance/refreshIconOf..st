refreshing
refreshIconOf: aMorph
	aMorph icon: (self model 
					perform: self getIconSelector 
					with: aMorph complexContents item).
	aMorph changed.