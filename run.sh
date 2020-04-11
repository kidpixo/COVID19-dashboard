# run container 
# mount code and ssh keys
docker run  --rm -it -v $PWD:/code -v ~/.ssh:/home/jovyan/.ssh:ro covid19-dashboard:alpha /run.sh


## this runs inside container
CODE=/code

cd $CODE
# execute this
jupyter nbconvert --to notebook --inplace --execute $CODE/Logistic\ regression\ COVID-19\ -\ Italy\ dataset.ipynb


git add --all
git commit --verbose -a -m "update $(date +%F)"
git push
