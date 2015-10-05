# notetaking

This is a bash wrapper for the pandoc tool. Usually, I take notes or writing
reports in markdown, in order to  have them in plain text, which is more
readable from latex, and is cross-platform. Markdown and using of pandoc for
producing pdf, docx, latex, html files etc is a great choice for plain text
(there are limitations for more sofisticated texts).

So, this is the script I wrote in order to compile multiple `md` files at once
and choosing between latex templates.

# Installation

Install depedencies:

```bash
sudo apt-get install pandoc pandoc-citeproc
```

Download scripts in the desired installation directory and run the install
script in order to create the directories in a desired path

```bash
git clone https://github.com/iSaran/notetaking.git
cd notetaking
./install.sh workspace/path
```

# Usage

The installation script adds to your path the `notebuild` script which builds
your markdown files.

Being inside your workspace you can run:

```bash
notebuild
```

Or you can use a flag to define more options. For instance if you want to use
the template for a formal report, use:

```bash
notebuild -t formal_report
```

For more options use the `-h` flag:

```bash
notebuild -h
```

