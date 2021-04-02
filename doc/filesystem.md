##### [[TOC]](../README.md)
# File System

## Directory Tree
An organized approach to files is important for any project or group of projects, but for some workflows it's imperative. Each project type (Finale, MuseScore, Sibelius, or LilyPond) lives in its own toplevel directory. Below toplevel, there will be various subdirectories that may differ depending on the workflow requirements specified by each project type. The toplevel directory tree looks like
```
transscription-projects/
| |-common/
| |-doc/
| |-finale/
| |-lilypond/
| |-musescore/
| |-sibelius/
| .gitignore
| README.md
```

Individual project type directories will have their own hierarchies with some project-specific differences, but in general, they will look like

```
|-sibelius/
| |-common/
| | |-images/
| | | |-jpg/
| | | |-png/
| | | |-svg/
| | |-plugins/
| | |-stylesheets/
| |-projects/
| | |-notesettersinc/
| | | |-hal-leonard/
| | | | |-001-templates/
| | | | | |-grv/
| | | | | |-brv/
| | | | |-best-of-you/
| | | | | |-grv/
| | | | | | | best-of-you-grv.sib
| | |-personal/
| | | |-tossed-away/
| | | | |-grv/
| | | | | | tossed-away-grv.sib
| | | | |-brv/
| | | | | | tossed-away-brv.sib 
| | | |-trapped-under-ice/
| | | | |-grv/
```

There is a `common` directory which houses resources that can be used in any of the project files of the same type (like images or legend graphics) or program specific resources which should be kept handy - software plugins, music or text fonts, etc.

If there are projects for paying clients `projects` may be broken into `notesettersinc` and `personal` directories. Subdirectories will be delineated by song name, and then by project sub-type or instrumentation beneath that.

Check each project type's software specific documentation for specific and up-to-date information on the best directory structure for its particular workflow.

## The `.gitignore` File

Use the `.gitignore` file at the root directory to specify any filetypes that should not be committed to the repo. These are generally output files (like `*.pdf` files) or programatically generated backup files.

## Versioning

Finale, Sibelius, and MuseScore each have an interface to add metadata to files. Among other information, the software version used to create and save the file should be entered here. For LilyPond, the text files themselves should contain this information