echo "パスワードマネージャーへようこそ！"
echo "次の選択肢から入力してください(Add Password/Get Password/Exit)："
read select

if   [ "$select" = "Add Password" ]; then
	bash Hello_password_manager.sh
elif [ "$select" = "Get Password" ]; then
	echo "Get Password"
elif [ "$select" = "Exit" ]; then 
echo "Thank you!"
else
echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
bash Selection_password_manager.sh
				
fi
