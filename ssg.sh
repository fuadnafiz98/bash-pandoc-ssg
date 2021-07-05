#!/bin/bash

rm -rfd out/**/* 2>/dev/null
mkdir -p out/metadata
mkdir -p out/assets
mkdir -p out/blogs/assets

cp -r template/assets/* out/assets/

echo "{\"links\": []}" > out/metadata/data.json

for file in src/blogs/**/*.md; do
  echo $file
  dir=$(dirname $file)
  dir="${dir:4}"

  mkdir -p out/$dir
  mkdir -p out/"${dir}"/assets

  pandoc -s "${file}" -o out/"${dir}"/index.html --template=template/blog.html

  # cp -r src/"${dir}"/assets/* out/assets 2>/dev/null
  # cp -r src/"${dir}"/assets/* out/"${dir}"/assets 2>/dev/null
  cp -r src/"${dir}"/assets/* out/blogs/"${dir}"/assets 2>/dev/null
  cp -r src/"${dir}"/assets/* out/blogs/assets 2>/dev/null

  data=$(pandoc --template=pandoc/metadata.pandoc $file | jq)
  echo $data

  cat out/metadata/data.json | jq ".links += [$data]" >> out/metadata/d.json && mv out/metadata/d.json out/metadata/data.json 
done

pandoc -s src/README.md -o out/index.html --template=template/index.html --metadata-file=out/metadata/data.json 
