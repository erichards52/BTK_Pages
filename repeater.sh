rm -rf img
rm BTKNB_IPYN_Creation.html
rm -rf BTK_Outputs
until jupyter nbconvert --to html --ExecutePreprocessor.timeout=-1 --execute BTKNB_IPYN_Creation.ipynb
do
  rm -rf BTK_Outputs
done

for jpnb in BTK_Outputs/*.ipynb; do
  until /homes/richards/miniconda3/bin/jupyter nbconvert --to html --ExecutePreprocessor.timeout=-1 --execute "$jpnb"
  do
    echo "Failed, trying again"
  done
done
  
rm -rf BTK_Outputs/*.ipynb
#git add BTK_Outputs
#git commit -m "Updated HTMLS"
#git push origin master --force
