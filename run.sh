## local dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

## get new version
git -C $DIR pull

## this runs inside container
CODE=/code

echo "DIR : $DIR"
echo "CODE : $CODE"
# run container 
docker run  --rm -it -v $DIR:/code covid19-dashboard:latest jupyter nbconvert --to notebook --inplace --execute $CODE/Logistic\ regression\ COVID-19\ -\ Italy\ dataset.ipynb
echo "executed $(date)" >> $DIR/execution.log

# pushing upstream
git -C $DIR add --all
git -C $DIR commit --verbose -a -m "update $(date +%F)"
git -C $DIR push
