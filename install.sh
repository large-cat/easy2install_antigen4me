user_name=`whoami`
tar -xzf zsh_src4me.gz

grep -lr MyUserName2installAntigen zsh_src4me | xargs sed -i "s/MyUserName2installAntigen/$user_name/g"
cd ./zsh_src4me/
cp -r .antigen ~/
cp .local_zshrc ~/
cp .zshrc  ~/
cp install_antigen.sh ~/

cd ..
echo "installed antigen for $user_name"
rm -rf zsh_src4me
