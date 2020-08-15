README.md: guessinggame.sh
	echo "*Project Title*: **The Unix Workbench**\n" > README.md
	echo "*Date and time when make was run: *" `date` "\n">> README.md
	echo "*No of line of code in guessinggame.sh: *" `wc -l guessinggame.sh | awk '{print $$1}'` "\n">> README.md

