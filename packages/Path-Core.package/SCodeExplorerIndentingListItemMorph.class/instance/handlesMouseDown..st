morphic
handlesMouseDown: evt
    ^ (self toggleRectangle containsPoint: evt position) not