#!/usr/bin

ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

brew doctor

brew install git

mkdir ~/tmp
cd ~/tmp
git init https://github.com/joyent/node tmp/node
cd node
./configure
make
make test
make install

if [[! -d ~/repos]]; then
	mkdir ~/repos;
fi

git clone https://github.com/leostera/setup.js ~/repos/setup.js
cd ~/repos/setup.js
npm i
npm start
sh ./repos*.sh
