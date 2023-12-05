echo "サービス名を入力してください："
read service

grep "$service" data.txt > temp.txt

file_path="temp.txt"

while IFS=':' read -r var1 var2 var3 rest_of_line; do
if   [ "$var1" = "$service" ]; then
	echo "============================================="	
	echo "サービス名: $var1"
	echo "ユーザー名: $var2"
	echo "パスワード: $var3"
else
	echo "お問い合わせのサービスは見つかりませんでした"
	exit
fi
done < "$file_path"
rm temp.txt 
