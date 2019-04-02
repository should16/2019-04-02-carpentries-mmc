---
title: MMC Software Carpentry Workshop
date: April 02, 2019
---

# Carpentry Instructor Notes


## Initial Setup

- Ensure all have github accounts and Rstudio Cloud Accounts


## Introductions

- Introduce myself, interest in the carpentries, experience with teaching, why I love the carpentries
- Introduce helpers and instructors
- Introduce carpentries, interactive learning making mistakes
- Introduce feedback and session layouts, hand out sticky notes
- Introduce etherpad for notes, comments, links, questions
- Goal of the workshop: learners should be able to use git and Rstudio for reproducible research, data processing, and document generation. By the end of the workshop, learners should be able to clone a git repository, write R scripts, make git commits, push and pull, and process data in a reproducible way.


## Version Control:

- https://swcarpentry.github.io/git-novice/01-basics/index.html


## Setting up Git:

- https://swcarpentry.github.io/git-novice/02-setup/index.html

- Fork the repository: https://github.com/potterzot/2019-04-02-carpentries-mmc
- Create a new project in Rstudio Cloud
- update username and email

- Discuss the aspects of git available: see the files as displayed on the web site. Note the README.md file.


## Workflow and Collaboration with Git:

- https://swcarpentry.github.io/git-novice/08-collab/index.html

Open README.Rmd. Edit the <username>, <user email>, and other fields.
Save the file, and also click "knit".

In the terminal, do a "git status" to see changes.

"git add README.md"
"git add README.Rmd"
"git add ." <-- adds all files in the repository

"git commit -m 'update readme to use my information.'"

Look at repo web site to see changes in readme.

A basic workflow:
- checkout a current copy of the repository: git pull origin master
- make changes to a file: git add <filename>
- commit changes: git commit -m ""
- push changes to the repository: git push origin master


## Reproducible Project Management with Rstudio

- https://swcarpentry.github.io/r-novice-gapminder/02-project-intro/index.html

“Your closest collaborator is you from six months ago, but you don't reply to emails." -(Paraphrasing) Mark Holder

#### Best Practices
- Treat data as read only
- Clean data by writing a script stored in a different folder
- Treat output as disposable
  - caveat: if you send results to someone else, create a "version"
- Store data in the "data" folder, scripts in the "src" folder, and output in the "outputs" folder
- Separate function definition and application

- "Good Enough": https://github.com/swcarpentry/good-enough-practices-in-scientific-computing/blob/gh-pages/good-enough-practices-for-scientific-computing.pdf

- Discuss organization of repository

- Other possible organizations include:
  - https://github.com/ropensci/rrrpkg
  - http://projecttemplate.net/
  - https://github.com/cboettig/template

#### Download data from gapminder in a get data script

https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv

- "mkdir src/data/gapminder/ -p"
- Create R script to download data
- Introduce here package
- "mkdir data/gapminder/raw/ -p"


## Ignoring Things in Git

- "git status"
- Hmm... what do we do with data?
- Ignore some files: edit .gitignore
- "git status"
- "git add" and "git commit" and "git push"

Exercise: what else might we want to ignore? doc?

## Dataframe Manipulation with dplyr

- https://swcarpentry.github.io/r-novice-gapminder/13-dplyr/index.html


## Tracking Changes with Git

Introduce beepr package

- https://swcarpentry.github.io/git-novice/04-changes/index.html

- "git diff"
- "git add"
- "git diff --staged"
- "git log"
- "git reflog"

More complex git messages: Using Markdown

Exercises: git messages

## Creating Tidy Data with tidyr

- https://swcarpentry.github.io/r-novice-gapminder/14-tidyr/index.html

## Saving Data and Plots

- https://swcarpentry.github.io/r-novice-gapminder/11-writing-data/index.html

## Producing Reports with rmarkdown

- https://swcarpentry.github.io/r-novice-gapminder/15-knitr-markdown/index.html
- Two locations for rmarkdown files: "notebooks" and "outputs". "notebooks" are for informal documents. "outputs" for more formal documents.
- A markdown reference: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet

- introduce: rticles, stargazer, pander
- start with a file in "notebooks"
- do a simple linear model "m <- lm(lifeExp ~ continent + country + year + pop, data = d)" and stargazer it
- Typical workflow: Do data cleaning and analysis in src files. For serious outputs: analysis, save the models in outputs, read those in Rmd.


## Writing Good Software

- https://swcarpentry.github.io/r-novice-gapminder/16-wrap-up/index.html
- Introduce the assertthat package
- https://kbroman.org/Tools4RR/
- https://kbroman.org/steps2rr/
- Free online book on R packages: http://r-pkgs.had.co.nz/
- Free online book on Advanced R: http://adv-r.had.co.nz/

## Hands On Collaboration

- Form groups of two or three or four.
- Walk through adding as collaborators: Settings -> Collaborators
- Collaborators accept notifications
- Start a new Rstudio project from the new github repository
- All parties produce independent summary table of the gapminder data or a plot
- Commit and push
- Pull

- Discuss merging and why things are happening, conflicts, etc...

## END

- Fill out feedback stickies
- Post workshop survey: https://www.surveymonkey.com/r/swc_post_workshop_v1?workshop_id=2019-04-02-mmc




setting up git
cloning/creating a repository (reproducible research)
create a new branch
collaboration and workflow
rstudio and project management
dplyr
tracking changes
tidyr
rmarkdown
good software
collaboration project
