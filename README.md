# Kallisto Script

*This batch script automates the quantification of abundances of transcripts of RNA-seq data. Kallisto is a program created by the [Pachter Lab](https://pachterlab.github.io/kallisto/).*

## How the Script Works

Typically, the user must enter a long line of commands to run each fasta or fastq file. This can become quite tedious if the user has many files to run. After a little bit of configuration between every analysis, the script takes in a text file with the names and directories of each fastq file (G-zipped files work too) and quantifies each file consecutively without having to enter a command or selecting new files each run. 
