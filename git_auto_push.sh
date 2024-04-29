# 在 mac 自動將文件中的異動加入 stage 並且 comment 並送上 git

## 如何使用: 
### 要先做: 1.github repo 要先開好 2.本地的 git remote 先設定好對應的 github reppo
### 以後只要: 1.添加權限 `chmod +x git_auto_push.sh` 2.執行 `./git_auto_push.sh` 3.輸入 commit msg 4,輸入 git 的 remote name 5.輸入 git 的 branch name

## shell script 

### step1 add all to stage
git add .

### step2 commit with user input
read -p "Enter commit message: " commit_msg
git commit -m "$commit_msg"

### step3 enter remote name of git
read -p "Enter git remote name: " remote_name

### step4 enter branch name of remote branch
read -p "Enter branch name of github repo: " branch_name

### step5 push
git push -u $remote_name branch_name
