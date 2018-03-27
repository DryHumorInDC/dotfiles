function s3du(){
  bucket=`cut -d/ -f3 <<< $1`
  prefix=`awk -F/ '{for (i=4; i<NF; i++) printf $i"/"; print $NF}' <<< $1`
  echo "Using bucket [$bucket] and prefix [$prefix]"
  aws s3api \
    list-objects \
    --bucket $bucket \
    --prefix=$prefix \
    --output text \
    --query '[sum(Contents[].Size), length(Contents[])]' \
    | while read -r size num_objects; do
      jq '. |{ size:.[0],num_objects: .[1]}' <<< "[\"$(numfmt --to=si ${size})\",${num_objects}]"
     done
}

s3du $1
