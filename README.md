# Supplementary Files for the TGS-Lite Paper

To reproduce the results of TGS-Lite and TGS-Lite+ given in the paper, you need to follow the steps mentioned below. 
* **Step 1:** Install R version 3.5.1 in your experimental environment ([here](https://github.com/sap01/TGS-Lite-supplem/blob/master/README.md#installing-r-version-351-in-the-experimental-environment))
* **Step 2:** Execute the TGS-Lite and TGS-Lite+ algorithms ([here](https://github.com/sap01/TGS-Lite-supplem/blob/master/README.md#executing-the-tgs-lite-and-tgs-lite-algorithms-in-the-experimental-environment)).

## Installing R version 3.5.1 in the Experimental Environment
In this section, the following steps are described:
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

### Installing the ‘packrat’ Dependency Management Package for R
todo

## Executing the TGS-Lite and TGS-Lite+ Algorithms in the Experimental Environment
todo
