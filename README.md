# TODOs

- [ ] add assets in per blog and check

# Bash + Pandoc Static Site Generator 

## Tutorial

* add new item to json array
`$ cat meta/data.json | jq '.links += [{ "name": "fuad" }]' >> meta/d.json && mv meta/d.json meta/data.json`


## Check this out!!

```bash
$ pandoc --template=./scripts/metadata.pandoc src/blogs/contents/my-first-blog/README.md | jq

``


* and [this](https://stackoverflow.com/questions/42245288/add-new-element-to-existing-json-array-with-jq)
* Learn [JQ](https://www.baeldung.com/linux/jq-command-json)


## Folder Structure

```bash

- www
  - templates
    - index.html
    - assets
      - index.css
     - index.js
  - pages
    - home
      - README.md
    - blogs
      - blog-name-01
        - assets
          - images
          - videos
        - README.md
      - demo-blog-02
        - assets
          - images
          - videos
        - README.md
```

## Project structure

```bash
.
├── scripts
│   └── build.sh
├── src
│   ├── blogs
│   │   └── blog01
│   │       ├── assets
│   │       └── README.md
│   └── pages
│       └── home
│           └── README.md
├── ssg.sh
└── tempate
    ├── assets
    │   ├── css
    │   │   ├── index.css
    │   │   └── tailwind
    │   └── js
    │       └── index.js
    └── index.html
```

> More Coming soon :)

