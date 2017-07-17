# Kallisto Automation

*This batch script automates the quantification of abundances of transcripts of RNA-seq data. Kallisto is a program created by the [Pachter Lab](https://pachterlab.github.io/kallisto/).*

## How the Script Works

Typically, the user must enter a long line of commands to run each fasta or fastq file. This can become quite tedious if the user has many files to run. After a little bit of configuration between every analysis, the script takes in a text file with the names and directories of each fastq file (G-zipped files work too) and quantifies each file consecutively without having to enter a command or selecting new files each run. 

## Starting Your First Run

1. Before each run, you must configure the batch script to suit your needs. Right click the .bat file, and click 'edit'. 
2. There are three things that you must manually set each time:
  * Your working directory. (e.g. "C:/Kevin/RNAseq") Basically, where all of your kallisto and/or your fastq files are.
  * The index (e.g. Human, mouse genome)
  * The list of files to be run. (All listed in a .txt file called "Reads.txt")
3. If you do not have an index already, kallisto has a neat feature that allows you to build one from any genome file. See [Getting Started](https://pachterlab.github.io/kallisto/starting). 
4. For every single file that you wish to run via kallisto, you must copy and paste their path name into the "Reads.txt" file. (One file per line, e.g. "C:/Kevin/file.fastq.gz")
5. Start the script by double-clicking. Follow the prompts, confirm that your index and files are correct, and hit any key to start the kallisto run. If the script doesn't terminate immediately or give you an error, you should be on your merry way!

## Contact Me

Kevin Moyung: kevinmoyung@gmail.com
