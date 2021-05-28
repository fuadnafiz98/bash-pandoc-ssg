#!/bin/bash

for file in src/blogs/contents/**/*.md; do
  echo $file
  pandoc --template=./scripts/metadata.pandoc $file | jq
  # dir=$(dirname $file)
  # dir="${dir:4}" 
  # mkdir -p blk/$dir
  # # echo $dir
  # # echo pandoc -s "${file}" -o blk/"${dir}"/index.html --template=template/pages/blog.html
  # cp -r src/"${dir}"/assets blk/"${dir}/assets" 2>/dev/null
  # pandoc -s "${file}" -o blk/"${dir}"/index.html --template=template/_pages/_blog.html
done
