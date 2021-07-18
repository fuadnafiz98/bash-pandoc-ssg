<h1 align="center">BASH PANDOC SSG</h1>

<h2 align="center">A personal blog generator</h2>

<h3 align="center">Build with bash scripts, pandoc & jq</h3>

## Installation

- pandoc
- jq
- bash

## Usage

all you have to do is to create a new folder named with your blog.

**The name shouldn't contain any space**.

For example if the blog name is `Introduction to Docker` then the folder name will be

```
src
  - introduction-to-docker
    - assets
      - image.jpg
    - README.md
```

create a folder `assets` inside your blog named folder and put all your assets(images, videos) there.

Then write the following metadata in the start of your `README.md` file

```markdown
---
title: third Blog
thumbnail: "https://link.com"
url: "third-blog"
...
```

So, give the title, thumbnail and the url of the blog and start writing!

to generate the output, simply run

```bash

bash ssg.sh

```

> Make sure you have **pandoc**, **jq** installed.

the Output will be stored in `out` folder.


### What will be the deployment progress.

1. I will have a `blogs` folder
1. I will write various blogs on it. 
1. then I will push it on github.
1. in the workflow it will clone it, install all the dependencies.
1. run the build command to build the `out` folder. 
. deploy the `out` folder github static pages through `gh-pages`



### Workflow


```
$ docker run -v "$(pwd)":/app ssg:latest
```

1. I first write blogs on `blogs` folder
1. push the markdown files on github
1. in github action:
  1. second
