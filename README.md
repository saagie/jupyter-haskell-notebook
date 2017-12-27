# Jupyter Datascience Notebook for haskell

## Run with :
	docker run -p 8888:8888 -v /path/to/data/notebooks/dir:/notebooks-dir saagie/haskell-notebook:latest

	Mounting volume is optional (-v /path/to/data/notebooks/dir:/notebooks-dir) but if you want to do it:
		* create your local directory with: `mkdir -P /path/to/data/notebooks/dir`
		* make Jovyan (Jupyter notebook default user) the owner of this directory with: `chown -R 1000:100 /path/to/data/notebooks/dir`

## Libraries :
	more than 1700 packages are installed, :
	https://www.stackage.org/lts-5.0

## Install libraries with :
	import System.Cmd
	system "stack install libraryName"
