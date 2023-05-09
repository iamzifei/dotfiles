# Mac Setup

## Download and install the font
1. Download the Consolas font from http://www.fontpalace.com/font-details/Consolas/
1. Open Finder and navigate to `Downloads` directory
1. Double click the `Consolas.ttf` file
1. A dialog box appears displaying the details about the font
1. Click `Install font` button

## Using Consolas font on IntelliJ IDEA:
1. Open IDEA Preferences Window (Press Command + ,)
1. Editor > Colors & Fonts > Font
1. Uncheck `Show only monospaced fonts` checkbox
1. Select the `Consolas` font from the font list

## Oh-My-Zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## MVN
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```

## PYENV
```
brew update
brew install pyenv
```

## PNPM
```
brew install pnpm
```

## JDK
- download Java 8 from [here](https://corretto.aws/downloads/latest/amazon-corretto-8-aarch64-macos-jdk.pkg)
- download Java 17 from [here](https://corretto.aws/downloads/latest/amazon-corretto-17-aarch64-macos-jdk.pkg)

## Dev Tools
- [iTerm2](https://iterm2.com)
- [VSCode](https://code.visualstudio.com)

## Optional tools
### SourceTree
download from [here](https://www.sourcetreeapp.com)

### Github Desktop
download from [here](https://desktop.github.com)

### Maven
- download [maven 3.9.1](https://dlcdn.apache.org/maven/maven-3/3.9.1/binaries/apache-maven-3.9.1-bin.zip)
- unzip and move to the $HOME/Dev
```
unzip apache-maven-3.9.1-bin.zip
```
- set path
```
# Maven
export MAVEN_HOME="$HOME/Dev/apache-maven-3.9.1"
export PATH="$MAVEN_HOME/bin:$PATH"
```

