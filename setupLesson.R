##This file will setup a new lesson
#
# install.packages(c("sandpaper", "varnish", "pegboard"),
#                  repos = c("https://carpentries.r-universe.dev/", getOption("repos")))

library("fs") # file system package for cross-platform paths
library("sandpaper")

# Create a brand new lesson on your desktop called "buoyant-barnacle"
bb <- path_home("Documents/readable-code/example")
print(bb) # print the new path to your screen
create_lesson(bb) # create a new lesson in that path
