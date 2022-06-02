chcp 65001

for /l %%n in (8,1,20) do (

git checkout -b "test%%n"
type nul > test%%n.txt
git add test%%n.txt
git commit -m "add test%%n"
git push -u origin test%%n
git switch master 
git commit --allow-empty -m "空コミット"
git push

)



