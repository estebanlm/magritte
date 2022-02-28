private
appendWidget: aWidget description: aDescription

		
	rowCount := rowCount + 1.
	gridLayout 
		add: aDescription label 	at: 1@rowCount;
		add: aWidget 				at: 2@rowCount