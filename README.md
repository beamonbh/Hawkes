# Hawkes
======
A repository based on the software architecture and development of a dual alarm AM/FM clock radio. 

### Getting Started
Fork this repository, copy the https url from the forked copy. In the terminal or command line, change directories to where you want the project folder. Once you are located in the desired folder, type *git clone* and paste the url that is copied to the clipboard. The following is an example of what the url should look like.
```bash
$ git clone https://github.com/profilename/Hawkes.git
```
Once done, change directories to the project folder and type in the terminal:
```bash
$ git remote add upstream https://github.com/beamonbh/Hawkes.git
$ git remote -v
```
This will allow you to communicate between the repositories. Now you can open the project folder in a text editor. Before any changes to that project, always make sure you grab the current working project by using the command:
```bash
$ git pull upstream master
```
### How to make a commit
Make any changes on your computer and press save. Use the following commands while located inside the project's directory.
```bash
$ git add -A
$ git commit -m"My first Commit"
$ git push
```
You will now have committed to your origin. Go to github.com and create a pull request to merge the repositories.
