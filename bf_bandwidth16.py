for c in string:
	if c == '.':
		out_str += '.'
	elif c == ',':
		out_str += ','
	elif c == '>':
		out_str += '>>>>'
	elif c == '<':
		out_str += '<<<<'
	elif c == '+':
		out_str += '>+<+[>-]>[->>+<]<<'
	elif c == '-':
		out_str += '>+<[>-]>[->>-<]<<-'
	elif c == '[':
		out_str += '>+<[>-]>[->+>[<-]<[<]>[-<+>]]<-[+<'
	elif c == ']':
		out_str += '>+<[>-]>[->+>[<-]<[<]>[-<+>]]<-]<'