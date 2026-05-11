#!/bin/bash

# ~/dotprofilesが存在しなければリポジトリをダウンロードする
if ! [ -e ~/dotprofiles ]; then
   git clone git@github.com:Hiro4901/dotprofiles.git ~/dotprofiles
fi

# ~/.bashrcが存在したら~/.bashrc.orgにリネームする
if [ -e ~/.bashrc ]; then
       mv ~/.bashrc ~/.bashrc.org
fi

# シンボリックリンクを作成する
ln -s ~/dotprofiles/.bashrc ~/.bashrc
