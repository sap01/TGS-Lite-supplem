# Supplementary Files for the TGS-Lite Paper

To reproduce the results of TGS-Lite and TGS-Lite+ given in the paper, you need to follow the steps mentioned below. 
* **Step 1:** Install R version 3.5.1 in your experimental environment ([here](https://github.com/sap01/TGS-Lite-supplem/blob/master/README.md#installing-r-version-351-in-the-experimental-environment))
* **Step 2:** Execute the TGS-Lite and TGS-Lite+ algorithms ([here](https://github.com/sap01/TGS-Lite-supplem/blob/master/README.md#executing-the-tgs-lite-and-tgs-lite-algorithms-in-the-experimental-environment)).

## Installing R version 3.5.1 in the Experimental Environment
In this section, the following sub-steps are described:
* Installing or compiling R ([here](https://github.com/sap01/TGS-Lite-supplem/blob/master/README.md#installing-or-compiling-r))
* Installing the ‘packrat’ dependency management package for R ([here](https://github.com/sap01/TGS-Lite-supplem/blob/master/README.md#installing-the-packrat-dependency-management-package-for-r))

### Installing or Compiling R
The experimental environment uses R version 3.5.1 (hereafter, R-3.5.1). Therefore, it is expected that any R version, same or higher than that, should suffice. For R-3.5.1 installation in Windows or macOS, please consult the following official manuals, respectively.
* 'Installing R under Windows': https://cran.r-project.org/doc/manuals/r-release/R-admin.html#Installing-R-under-Windows
  * Download R version 3.5.1 for Windows: https://cran.r-project.org/bin/windows/base/old/3.5.1
* 'Installing R under macOS': https://cran.r-project.org/doc/manuals/r-release/R-admin.html#Installing-R-under-macOS

For Unix and Unix-alike OSs (like - Linux OSs), R-3.5.1 can be compiled to a destination directory of your choice from the R-3.5.1 source tarball ( https://github.com/sap01/TGS-Lite-supplem/blob/master/sourcecode/R-3.5.1.tar.gz ). Compilation is different from a system-wide installation. A R compilation inside a specific directory does not affect the system-wide installation or any other compilation inside any other directory. Thus, you may create multiple compilations in your system, where each
compilation refers to a distinct version of R.

Please keep the source tarball and the ‘compileR351.sh’ shell script ( https://github.com/sap01/TGS-Lite-supplem/blob/master/sourcecode/compileR351.sh ) inside the same directory. Then open the shell script and replace the value of the variable ‘COMPILEPATH’ to a directory of your choice, where you wish to have the compiled R-3.5.1. For example:
```
COMPILEPATH=/home/saptarshi/R/R-3.5.1
```
Kindly make sure that the given path exists. The script does not create the path itself. After the compilation path is assigned, execute the shell script as shown below: (here, the '$' symbol represents the bash command prompt)
```
$ ./compileR351.sh
```
The execution may take a few minutes to complete. What to do if the execution is successful and what to do if it fails, are described in the following two paragraphs, respectively.

**If ‘compileR351.sh’ Completes Execution Successfully:** If 'compileR351.sh' completes execution successfully, it builds a compiled version of R-3.5.1 inside the given directory. This specific compilation can now be invoked from bash using the following command: (basically, append ‘/bin/R’ to the compilation path)
```
$ /home/saptarshi/R/R-3.5.1/bin/R

R version 3.5.1 (2018-07-02) -- "Feather Spray"
Copyright (C) 2018 The R Foundation for Statistical Computing
...
>
```
Symbol '>' represents the R command prompt.

If the compilation path is very long, writing this command can be a tedious process. Instead, go to your home directory and append the following line to your '.bashrc' file: 
```
alias R351=/home/saptarshi/R/R-3.5.1/bin/R
```
Save and exit '.bashrc'. But the current bash session keeps using the older version of '.bashrc'. To mitigate this issue, source (reload) '.bashrc' as shown below:
```
$ source .bashrc
```
It creates an alias to the long command. Now, you may use the alias as follows:
```
$ R351

R version 3.5.1 (2018-07-02) -- "Feather Spray"
Copyright (C) 2018 The R Foundation for Statistical Computing
...
>
```

For executing any R script with R-3.5.1, please use the following command in bash:
```
$ /home/saptarshi/R-3.5.1/bin/Rscript path/to/script/script_to_run.R
```
**If ‘compileR531.sh’ Fails:** If 'compileR351.sh' fails (e.g. 'configure: error'), the reason behind the failure is that the OS does not have some of the required dependencies. Resolutions of a number of possible errors are discussed at: http://pj.freefaculty.org/blog/?p=315 ; if required, please find its offline PDF version at: https://github.com/sap01/TGS-Lite-supplem/blob/master/sourcecode/building-r-devel-PJ.pdf . Source tarballs of most of the dependency packages are stored at: http://r.research.att.com/src/ . Also the ‘Installing R under Unix-alikes’ official manual can be consulted at: https://cran.r-project.org/doc/manuals/r-release/R-admin.html#Installing-R-under-Unix_002dalikes .

### Installing the 'packrat' Dependency Management Package for R
Once R is installed, the next step is to install the ‘packrat’ package (https://CRAN.R-project.org/package=packrat). It provides a dependency management system for the algorithmic implementations. In other words, it automatically downloads and installs the required packages with the required versions when the implementations of the TGS-Lite and TGS-Lite+ algorithms are being installed.
In the experimental environment, ‘packrat’ package version 0.4.9-3 is used. Therefore, it is expected that installing the same or higher version would be sufficient.
In the experimental environment, a specific directory, namely 'src downloaded packages' is created to download required external packages, like - 'packrat'. Then the latest version of ‘packrat’ (version 0.4.9-3 at that time) is downloaded inside it and installed to the 'library' directory. This whole process is done through the following commands:

```
%% Go to the R compilation’s home directory
$ cd /home/saptarshi/R/R-3.5.1

%% Create a directory for downloading external R packages
$ mkdir src_downloaded_packages

%% Open a R session
$ R351
```
```r
## Download the latest version of the ’packrat’ package
## from ’https://cloud.r-project.org/’
## to ’/home/saptarshi/R/R-3.5.1/src_downloaded_packages’
## and install it inside ’/home/saptarshi/R/R-3.5.1/library’.
> install.packages(’packrat’, ’/home/saptarshi/R/R-3.5.1/library’,
dependencies = TRUE, repos = ’https://cloud.r-project.org/’,
destdir = ’/home/saptarshi/R/R-3.5.1/src_downloaded_packages’)
```
Finally, a directory with the name 'projects' is created where the algorithmic implementations would be installed.
```
$ mkdir /home/saptarshi/R/R-3.5.1/projects
```

## Executing the TGS-Lite and TGS-Lite+ Algorithms in the Experimental Environment
The R implementations of the TGS-Lite and TGS-Lite+ algorithms are saved as a R project tarball (https://github.com/sap01/TGS-Lite-supplem/blob/master/sourcecode/TGS-Lite-2019-04-15.tar.gz). Copy this file to '/home/saptarshi/R/R-3.5.1/projects':
```
$ mv TGS-Lite-2019-04-15.tar.gz /home/saptarshi/R/R-3.5.1/projects
```
After that, unbundle the project using 'packrat':
```
%% Go to the project directory
$ cd /home/saptarshi/R/R-3.5.1/projects

%% Open a R prompt
$ R351
```
```r
## Set your favourite CRAN repo, e.g.,
## https://cran.rstudio.com/
> options(repos=structure(c(CRAN="https://cran.rstudio.com/")))

## Attach ’packrat’ package
> library(packrat)

## Unbundle the project inside the current directory
> packrat::unbundle(’TGS-Lite-2019-04-15.tar.gz’, getwd())
```
Once unbundled, a new project directory will be created with name 'TGS-Lite'. Go inside the project directory:
```
%% Go to /home/saptarshi/R/R-3.5.1/projects/TGS-Lite
$ cd TGS-Lite
```
Directory 'TGS-Lite' contains all required R scripts and two sub-directories: 'packrat' and 'asset'. The 'packrat' sub-directory is for internal management of 'packrat' and not to be interfered with. The 'asset' sub-directory is the place where the input and the output files are stored. Copy all the dataset files inside this sub-directory. For example, let us assume that the directory corresponding to https://github.com/aaiitg-grp/TGS/tree/master/datasets , in your local computer, is '/home/saptarshi/datasets'. Then copy all the files from that directory to 'TGS-Lite/asset':
```
$ scp /home/saptarshi/datasets/* asset
```
The driver R script is 'TGS-Lite/TGS.R'. It takes the user-defined input parameters in a JSON file format (http://www.json.org/). The JSON file must reside in the ‘asset’ sub-directory. ‘TGS.R’ can be executed with the following command:
```
%% Assuming ’TGS-Lite/asset/input.json’ contains the user-defined parameters.
%% Note that only ’input.json’ is used instead of ’asset/input.json’. This
%% is because ’TGS.R’ is programmed to search for the input JSON files in
%% the ’asset’ sub-directory.
%% The ’&’ symbol instructs the execution process to start in the background.
$ nohup time /home/saptarshi/R/R-3.5.1/bin/Rscript TGS.R input.json &

%% Prints the process ID
[1] 8172
```
Since, the execution process is performed in the background, the bash command prompt can be used for other tasks. Once the execution is complete, a ‘Done’ message is automatically displayed in bash. However, if you wish to monitor the execution of the process, you may do so with the ‘top’ command as shown below:
```
%% Show details of the process with ID 8172
$ top -p 8172
```
