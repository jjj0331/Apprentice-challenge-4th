echo "サービス名を入力してください："
read service

grep "$service" data.txt > temp.txt

file_path="temp.txt"
num=0

while IFS=':' read -r var1 var2 var3 rest_of_line; do
if   [ "$var1" = "$service" ]; then
	echo "============================================="	
	echo "サービス名: $var1"
	echo "ユーザー名: $var2"
	echo "パスワード: $var3"
	num=num+1
fi
done < "$file_path"

if [ "$num" = 0 ]; then
	echo "お問い合わせのサービスは見つかりませんでした"
fi

rm temp.txt 
