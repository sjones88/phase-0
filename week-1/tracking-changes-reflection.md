## How does tracking and adding changes make developers' lives easier? ##

The ability to track and add changes allows developers to revert to an older version of the code if their changes or additions break the code. This allows multiple developers to work on a project without worrying that they will ruin the code and have to waste time figuring out how to fix the bug that they created in the project's original code.

## What is a commit? ##

A commit is a copy of a file or directory that is saved to a remote server.

## What are the best practices for commit messages? ##

Commit messages generally should be brief summaries, written in the imperative tense, with paragraphs separated by blank lines. Lines of a pharagraph should be no longer than about 72 characters.

## What does the HEAD^ argument mean? ##

The HEAD argument refers to the current commit, while the HEAD^ refers to the previous commit.

## What are the 3 stages of a git change and how do you move a file from one stage to the other? ##

- Stage 1: A file exists in its original form after it has been pulled from the master branch to the computer.
- Stage 2: After tpying the "git checkout -b NEW_BRANCH_NAME" command in the command line, the file exists as part of a new branch. Changes can now be made to the file without changing the master.
- Stage 3: When the user is ready to make a commit, the file has to be staged. "git add FILENAME" stages the file and "git commit" commits the changes the user has made. To make the live on GitHub, the file (as part of the working branch) has to be pushed to the user's fork on GitHub. This is done using the "git push origin FEATURE-BRANCH-NAME" command. Once this is done, the file will exist as a branch on GitHub and will be ready to merge with the master via a pull request.

## Write a handy cheatsheet of the commands you need to commit your changes ##

- git checkout master ==> Checkout master branch to make sure local and remote versions of the repository are the same.
- git pull origin master ==> Fetches any changes that were made to the repository after your pull.
- git checkout feature-branch-name ==> Navigates to your feature branch.
- git merge master ==> Merges changes FROM master branch into your feature.
- git push origin feature-branch-name ==> pushes changes FROM local repository TO GitHub.

## What is a pull request and how do you create and merge one? ##

A pull request is the means by which a user merges committed changes (in the feature branch) with the master branch. After making a commit (via git push origin branch-name) go to the relevant fork at GitHub.com and select the branch that was just uploaded. Click "Pull Request," add a comment if necessary, and click "Create pull request."

## Why are pull requests preferred when working with teams? ##

Pull requests are preferred because they allow users to revert project to a previous version. This is useful if changes to the code cause problems and the team wants to simply go back to a previous working version of the code.
