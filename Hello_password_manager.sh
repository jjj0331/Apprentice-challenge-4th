echo 'サービス名を入力してください：' 
read service

echo 'ユーザー名を入力してください：' 
read user

echo 'パスワードを入力してください：' 
read pass

gpg -o read_able.txt  -d data.gpg

if [ -z "$service" ] || [ -z "$user" ] || [ -z "$pass" ]; then
	    echo '入力が足りません'
    else
	        echo 'Thank you!'
	        echo "$service:$user:$pass" >> read_able.txt
		gpg --encrypt --recipient "iwasaki jun (y) <19980331jj@gmail.com>" -o data.gpg -a -e read_able.txt
                rm read_able.txt
fi
