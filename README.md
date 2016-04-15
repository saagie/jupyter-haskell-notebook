# Jupyter Datascience Notebook for haskell

## Run with :
	docker run -p 8888:8888 -v /path/to/data/notebooks/dir:/notebooks-dir saagie/haskell-notebook:latest

## Libraries :
	more than 1700 packages are installed, :
	https://www.stackage.org/lts-5.0

## Install libraries with :
	import System.Cmd
	system "stack install libraryName"
