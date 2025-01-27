html_files=(BTK_Outputs/*.html) # use your own glob expression
n=200               # number of files per command line; adjust to taste
for ((i=0; i < ${#html_files[@]}; i+=n)); do
  git add "${html_files[@]:i:n}" 
  git commit -m "Iteratively adding HTML files"
  git push origin master --force
done

BTK_img_files=(BTK_Outputs/img/*.png) # use your own glob expression
n=200               # number of files per command line; adjust to taste
for ((i=0; i < ${#BTK_img_files[@]}; i+=n)); do
  git add "${BTK_img_files[@]:i:n}"
  git commit -m "Iteratively adding HTML files"
  git push origin master --force
done

img_files=(img/*.png) # use your own glob expression
n=200               # number of files per command line; adjust to taste
for ((i=0; i < ${#img_files[@]}; i+=n)); do
  git add "${img_files[@]:i:n}"
  git commit -m "Iteratively adding HTML files"
  git push origin master --force
done


