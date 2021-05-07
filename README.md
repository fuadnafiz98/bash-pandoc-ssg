# TODOs

- [ ] add assets in per blog and check
- [ ] figure out how to add meta tag in _meta folder

# Bash + Pandoc Static Site Generator 

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

