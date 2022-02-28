visiting
visitUrlDescription: aDescription 
	| textInput url |

	url := self read: aDescription.
	textInput := self newLink
		addStyle: 'mpLink';
		url: url; 
		label: (aDescription urlLabel ifNil: [ url ]);
		whenBuiltDo: [ :ann | GRunLoop defer: [ ann widget beHAlignStart ] ];
		help: aDescription comment;
		yourself.
		 
	self appendWidget: textInput description: aDescription