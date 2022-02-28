visiting
visitMemoDescription: aDescription
	| textArea |

	textArea := self newText
		addStyle: 'mpTextArea';
		text: (self read: aDescription);
		editable: aDescription isReadonly not;
		whenTextChangedDo: [ :aString | self write: aString description: aDescription ];
		help: aDescription comment;
		yourself.
		 
	self appendWidget: textArea description: aDescription