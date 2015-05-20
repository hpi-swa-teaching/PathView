accessing
firstMouseSelector
	"Answer the selector corresponding to the first mouse-handling selector fielded.  Created in support of providing balloon-help for halo handles, triggered by the selector handled"

	#(#mouseDown #click #mouseMove #mouseStillDown #mouseUp #mouseEnter #mouseLeave #mouseEnterDragging #mouseLeaveDragging #doubleClick #startDrag) 
		do: [:sel | self handlerAt: sel ifPresent: [:h | ^h selector]].
	^nil