crumb :root do
 link "メルカリ", root_path
end
 #user/mypage
crumb :user_mypage do
 link "マイページ",root_path
 parent :root
end

 #item/show
crumb :item_show do
 link "コーチなんだよ！！！！！！！！！！！！！！！！！！",items_path
 parent :root
end
