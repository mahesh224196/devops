git config --global merge.tool p4merge
git config --global mergetool.p4merge.cmd "p4merge.exe \"$BASE\" \"$LOCAL\" \"$REMOTE\"  \"$MERGED\""
git config --global diff.tool p4merge
git config --global difftool.p4merge.cmd "p4merge.exe \"$LOCAL\" \"$REMOTE\""
git config --global mergetool.keepBackup false
git config --global mergetool.trustExitcode false
git config --global difftool.prompt false
git config merge.tool vimdiff
git config merge.conflictstyle diff3

