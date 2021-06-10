#!/bin/bash

# folder setup 

: '
rm -rfd blk/**/*
mkdir -p blk/blogs/_meta
mkdir -p blk/_assets/

cp -r template/_assets/css blk/_assets/
cp -r template/_assets/js blk/_assets/

totalPages=`ls src/blogs/_meta | wc -l`
count=0

for file in src/blogs/_meta/*.md; do
  let count++

  md=$file
  # echo $md 

  dir=$(dirname $file)
  dir="${dir:4}" 
  # basename $file
  # echo $dir

  # if count == 1 && count == totalPages add nothing
  # if count == 1 && count < totalPages add next
  # if count > 1 && count < totalPages add prev & next
  if [[ $count -eq $totalPages ]] && [[ $count -eq 1 ]]
  then
    # add noting
    # echo pandoc -s "${md}" -o blk/"${dir}"/"${count}".html --template=template/pages/blogList.html
    pandoc -s "${md}" -o blk/"${dir}"/"${count}".html --template=template/_pages/_blogList.html
  elif [[ $count -eq $totalPages ]]
  then
    # add prev
    # echo pandoc -s "${md}" -o blk/"${dir}"/"${count}".html --template=template/_pages/blogList.html -M prevPage="$((count-1))".html
    pandoc -s "${md}" -o blk/"${dir}"/"${count}".html --template=template/_pages/_blogList.html -M prevPage="$((count-1))".html
  elif [[ $count -eq 1 ]] && [[ $count -lt $totalPages ]]
  then
    # add next 
    # echo pandoc -s "${md}" -o blk/"${dir}"/"${count}".html --template=template/_pages/blogList.html -M nextPage="$((count+1))".html
    pandoc -s "${md}" -o blk/"${dir}"/"${count}".html --template=template/_pages/_blogList.html -M nextPage="$((count+1))".html
  elif [[ $count -gt 1 ]] && [[ $count -lt $totalPages ]]
  then
    # add next and prev
    # echo pandoc -s "${md}" -o blk/"${dir}"/"${count}".html --template=template/_pages/blogList.html -M prevPage="$((count-1))".html -M nextPage="$((count+1))".html
    pandoc -s "${md}" -o blk/"${dir}"/"${count}".html --template=template/_pages/_blogList.html -M prevPage="$((count-1))".html -M nextPage="$((count+1))".html
  fi

done

mkdir -p blk/blogs/contents
# for file in src/blogs/contents/**/*.md; do
#   echo $file
#   dir=$(dirname $file)
#   dir="${dir:4}" 
#   mkdir -p blk/$dir
#   # echo $dir
#   # echo pandoc -s "${file}" -o blk/"${dir}"/index.html --template=template/pages/blog.html
#   cp -r src/"${dir}"/assets blk/"${dir}/assets" 2>/dev/null
#   pandoc -s "${file}" -o blk/"${dir}"/index.html --template=template/_pages/_blog.html
# done

# cd template/assets/tailwind && yarn tw:dev

'

rm meta/data.json 
echo "{\"links\": []}" > meta/data.json

for file in src/blogs/contents/**/*.md; do
  echo $file
  data=$(pandoc --template=./scripts/metadata.pandoc $file | jq)
  echo $data
  cat meta/data.json | jq ".links += [$data]" >> meta/d.json && mv meta/d.json meta/data.json 
done

# Read data from metadata.json file 
# $ pandoc -s test.md -o out.html --template=test.html --metadata-file=data.json

# jq -c '.links[]' meta/data.json | while read i;
# do
#   # read title thumbnail url < <()
#   title=$(echo $i | jq -r '.title')
#   thumbnail=$(echo $i | jq -r '.thumbnail')
#   url=$(echo $i | jq -r '.url')
#   # read thumbnail url < <$(echo $i | jq -r '.thumbnail, .url'); dont' work
#   echo $title;
#   echo $thumbnail;
#   echo $url;
# done

