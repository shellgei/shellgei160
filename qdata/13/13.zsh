# -e ファイルの有無を調べるオプション
[ -e unfile ] || touch unfile;

# <>は読み書きモードでファイルを開く
cat <> unfile;
