options("width"=160)                # wide display with multiple monitors
options("digits.secs"=3)            # show sub-second time stamps

#r <- getOption("repos")             # hard code the US repo for CRAN
#r["CRAN"] <- "https://cran.us.r-project.org"
#options(repos = r)
#rm(r)

## put something this is your .Rprofile to customize the defaults
setHook(packageEvent("grDevices", "onLoad"),
        function(...) grDevices::X11.options(width=8, height=8, 
                                             xpos=0, pointsize=10, 
                                             #type="nbcairo"))  # Cairo device
                                             #type="cairo"))    # other Cairo dev
                                             type="xlib"))      # old default

## from the AER book by Zeileis and Kleiber
options(prompt="R> ", digits=4, show.signif.stars=FALSE)


options("pdfviewer"="okular")         # on Linux, use okular as the pdf viewer

## Call R.app from MacVim

   if(interactive()){
       options(vimcom.verbose = 1) # optional
       library(vimcom)
   }

## From http://www.lepem.ufc.br/jaa/r-plugin.html

if(interactive()){
    options(vimcom.verbose = 1)
    # Load the required libraries:
    #library(colorout)
    #library(setwidth)
    library(vimcom)

    # Use the text based web browser w3m to navigate through R docs
    # in Linux Console after help.start():
    if(Sys.getenv("TMUX") != "" && Sys.getenv("DISPLAY") == "")
    options(browser = function(u) system(paste0("tmux new-window 'w3m ", u, "'")))
}

#utils::setWindowTitle(base::getwd())
#utils::assignInNamespace("setwd",function(dir)   {.Internal(setwd(dir));setWindowTitle(base::getwd())},"base")

.First <- function(){
 suppressPackageStartupMessages(library(dplyr))
 suppressPackageStartupMessages(library(RPostgres))
 #library(rPython)
 suppressPackageStartupMessages(library(ggplot2))
 suppressPackageStartupMessages(library(reshape2))
 cat("\n Rrrr! The statistics program for Pirates !\n\n")
}

if (Sys.getenv("TERM") == "xterm") {
        library("colorout")
        setOutputColors256(
                   normal = 40,
                   number = 214,
                   string = 85,
                   const = 35,
                   stderror = 45,
                   error = c(1, 0, 1), 
                   warn = c(1, 0, 100)
                  )
        }
    #library("setwidth")

options(stringsAsFactors = FALSE)
