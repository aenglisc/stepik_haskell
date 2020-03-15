ifndef file
  ghci_command = ghci
else
  ghci_command = ghci /haskell/$(file)
endif

shell:
	docker run -it --rm -w=/haskell \
	  --mount src=`pwd`/part1,target=/haskell/part1,type=bind \
	  --mount src=`pwd`/part2,target=/haskell/part2,type=bind \
	  haskell:7.8 bash

ghci:
	docker run -it --rm -w=/haskell \
	  --mount src=`pwd`/part1,target=/haskell/part1,type=bind \
	  --mount src=`pwd`/part2,target=/haskell/part2,type=bind \
	  haskell:7.8 $(ghci_command)
