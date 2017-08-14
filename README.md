# OSXCleaner
OSXCleaner is a set of scripts to clean system logs, application caches, cookies and more on MacOS.

## Installation
Running osxcleaner requires homebrew and the coreutils package.

### Option A: Run the install script
You can install homebrew and the necessary packages by executing the `install.sh` file within the osxcleaner directory.

	sh install.sh

### Option B: Run the commands manually
You can also simply run the following commands:

#### Installing Hombrew
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

#### Installing Packages
	brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt;

## Configuration
You will find multiple subdirectories within the `source/` directory, which contain functions to clean certain file paths or search for files matching certain strings.

You may find the names of the individual functions within the `osxcleaner.sh` file. You can comment / uncomment the functions to fit your needs. The default configuration cleans logs, cookies, caches and some application data (e.g. browsing history and local storage).

## Usage
It is recommended to verify the file paths and queries within the `souce/` directory first before executing the script.

**WARNING: This script may have unintended side effects and has not been tested with sufficient applications. You may experience the following:**

* Applications having cookies or storage removed may log you out of your session
* Open applications might crash (close them for running script)

**NOTICE: Close all open applications before running script**

To run the script, cd into the `osxcleaner/` directory and run the following:

	sh ./osxcleaner.sh

## TODO
* Rebuild script with python
* Add Google Chrome to the source directory
* Run tests with all MacOS included applications (e.g. Mail)
* Make it easier to add custom paths and queries
* Add variables for additional configuration (e.g. changing delete command)
* Add documentation for creating custom paths

## Credit
Big thanks to [drduh](https://github.com/drduh) and [privacytools.io](https://privacytools.io) for inspiration.
