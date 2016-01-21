## 1.1 Think About Time Reflection

The time management and productivity methods I focused in on were Tiny Habits (Fogg) and Time Boxing.

In Phase 0, I’ve decided to practice Time Boxing (setting a pre-determined amount of time in which to complete a task and stopping once the time is up) by setting up timers on my desktop for 25min (work), 5min (breaks), and 10min (reflections), and giving myself a certain number of “cycles” to complete the task. I’m using it right now to make sure I limit myself to 10min for writing this reflection! I will also think about some tiny habits I can form by using Dr. Fogg’s "After (existing behavior), I will (new tiny habit)” approach, and make sure I celebrate my small victories ("I’m awesome!!") :-)

Currently, I make lots of lists…long term goals, daily goals, to do lists. I’ve found over the years that they are useful for looking back to see whether I’ve made progress on a particular goal. But for daily time management, lists haven’t been effective. I need to break my time down into smaller segments, combined with giving myself limits in advance, as I described previously. I think this will be winning combo for me.

## 1.2 The Command Line Reflection

1. A shell is an interface that allows users to directly communicate with the computer's operating system using commands. Bash is a shell for Unix-based environments.
2. The most challenging part was switching between shells (Windows vs. Linux) and remembering which commands work for each. Since I am developing in a virtual environment, I wanted to practice for both environments.
3. Yes. All commands worked successfully.
4. I would say the most important commands are cd (change directory), ls (list directory) and cat (output file to screen). These commands allow for basic navigation and viewing, which is a good place to start.
5. Commands:
pwd - print working directory
ls - list directory
mv - move file or directory
cd - change directory
../ - use with cd to go up one level to the parent directory
touch - create empty file
mkdir - make directory
less - output file to screen one page at a time
rmdir - remove directory
rm - remove file
help - view help (manual) pages for a command

## 1.4 Forking and Cloning Reflection

To create a new repo:
- Log in to your GitHub account and click the ``+`` symbol (top right)
- Select “New Repo” from the dropdown menu
- Fill in the repo name, choose settings (public vs. private, license type, etc.), and click “Create Repo”

To fork a repo:
- On GitHub, navigate to the repo that you want to fork
- On the top right, click “Fork”
- Choose the user profile where the forked repo should be placed

To clone a repo:
- On GitHub, navigate to the repo that you want to clone
- Find the box labeled “HTTPS” and copy the link
- In your terminal, navigate to the folder where you want to clone the repo
- Type “git clone ``<insert HTTPS link>``" and hit enter

You fork a repo (vs. creating a new one) so that the repo will automatically include all of the existing project files, rather than being initialized as an empty git project.

A challenge I had was that when I installed git it was automatically configured to use an existing username/email from an old GitHub account I had previously set up via my desktop. I learned how to update the config file and changed my username & email to match my current account.
