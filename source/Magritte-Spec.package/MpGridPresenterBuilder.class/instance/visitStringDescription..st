visiting
visitStringDescription: aDescription 
	| textInput |

	textInput := self newTextInput
		addStyle: 'mpTextInput';
		text: (self read: aDescription);
		editable: aDescription isReadonly not;
		whenTextChangedDo: [ :aString | self write: aString description: aDescription ];
		help: aDescription comment;
		yourself.
		 
	self appendWidget: textInput description: aDescription