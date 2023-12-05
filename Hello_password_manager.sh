echo 'サービス名を入力してください：' 
read service

echo 'ユーザー名を入力してください：' 
read user

echo 'パスワードを入力してください：' 
read pass

if [ -z "$service" ] || [ -z "$user" ] || [ -z "$pass" ]; then
	    echo '入力が足りません'
    else
	        echo 'Thank you!'
	        echo "$service:$user:$pass" >> data.txt
fi
