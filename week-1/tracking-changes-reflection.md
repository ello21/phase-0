
   - How does tracking and adding changes make developers' lives easier?
   Tracking and adding changes gives developers the ability to revert to previous working versions of their codebase and the freedom to make changes without affecting the stable code.

   - What is a commit?
   A commit is a permanent snapshot of what a project looked like at a particular point in time.

   - What are the best practices for commit messages?
   Commit messages should be in the imperative tense (ex: add instead of added), and if further description is included it should detail what changes were made and why.

   - What does the HEAD^ argument mean?
   ``HEAD^`` refers to the 2nd to last commit that was made to a project. ``HEAD`` holds the last (most recent) commit, ``HEAD^`` holds the one before that.

   - What are the 3 stages of a git change and how do you move a file from one stage to the other?
   The 3 stages are untracked, staged, and committed. An untracked file can be staged by using the ``git add`` command. A staged file can be committed by using the ``git commit -m "Message"`` command.

   - Write a handy cheatsheet of the commands you need to commit your changes?
   ``git checkout -b new-branch-name``
   ``git status``
   ``git add filename``
   ``git commit -m "Message"``

   - What is a pull request and how do you create and merge one?
   A pull request is a request to merge a branch into a master repository. After your branch is pushed into your GitHub repo, you select ``Create Pull Request`` which will alert the owner of the repository to review your changes. If the changes are approved, the branch is merged into the repository by selecting ``Merge Pull Request`` and confirming.

   - Why are pull requests preferred when working with teams?
   To make sure that another set of eyes has reviewed the changes before they are introduced into the working project.