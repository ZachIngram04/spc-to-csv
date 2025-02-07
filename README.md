# Agilent MicroLab .spc Data to .csv

I made this script to help anyone in the PHSC438 laboratory using the Agilent IR + MicroLab software get their data in a format where they can work with it directly instead of having to take screenshots, write only peak values down, or find other workarounds. Simply export your spectra in the .spc file format and put them all into one folder, then run this script and it will convert all .spc files in the folder to .csv files which can be imported into MS Excel. It will also generate some plots for you as a bonus which you can export (just go to the "Plots" tab on the right side of the screen).

## Instructions

### 1. Download+install R and RStudio
The downloads and some installation instructions can be found for free here: https://posit.co/download/rstudio-desktop/
### 2. Download DataConvV2.R file
Click on the file above, then there should be a button around the top right that says "Download raw file".
### 3. Open the file with RStudio

### 4. Fill in paths for appropriate source and destination folders
Lines 3 and 4 should look like this:
```r
input_folder = "<path>"
output_folder = "<path>"
```
Replace `<path>` inside the quotation marks with the paths to your folders where the .spc files are and where you want the .csv files to go, respectively. An easy way to get this is to go to "Session" > "Set Working Directory" > "Choose Directory..." (Ctrl+Shift+H) at the top of the screen in RStudio, pick the folder, and then it will spit out the path in the "Console" panel in the lower left, inside of `setwd()`.
### 5. Update packages
Around the middle of the right half of the screen, click on the "Packages" tab then click the update button below it.
### 6. Run the code
Alt+Ctrl+R is the keyboard shortcut to run all of the code, but alternatively you can just highlight all of it and click the run button in the top right of the scripting panel. You may be prompted to install any missing packages/dependencies at this time, which RStudio should take care of for you.

## Acknowledgments

Big thanks to the developers that worked on the [hyperSpec package for R](https://github.com/r-hyperspec/hyperSpec), which I have made use of here.
