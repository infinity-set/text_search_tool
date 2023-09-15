# Overview

Welcome to the Text File Search Tool! This PowerShell script is designed to simplify your text-searching tasks by enabling you to quickly locate specific text patterns or keywords within text files. Whether you need to find important information in a pile of documents or want to automate your search process, this tool can help.

Read on to learn how to use the script effectively and why it can be a valuable addition to your toolkit.

## Table of Contents

- [Why Use This Script](#why-use-this-script)
- [Languages and Utilities Used](#languages-and-utilities-used)
- [Environments Used](#environments-used)
- [Usage](#usage)
- [Example](#example)
- [Notes](#notes)

## Why Use This Script

- **Efficient Text Searches**: This script provides a quick and efficient way to search for specific text patterns or keywords within text files. It can be especially useful when you need to locate information within a large collection of documents.

- **Automation**: Automating the search process with this script saves time and effort compared to manually opening and searching through each file.

- **Customization**: You can easily customize this script to search for specific types of files or adapt it for different search scenarios.

- **Interactive**: The script prompts you for the directory and search text, making it interactive and user-friendly.

## Languages and Utilities Used

- **PowerShell**

[<img alt="PowerShell Icon" width="50px" src="https://raw.githubusercontent.com/PowerShell/PowerShell/master/assets/ps_black_64.svg?sanitize=true" />][powershell]

[powershell]: https://learn.microsoft.com/en-us/powershell/

## Environments Used

- **Windows**

[<img align="left" alt="Microsoft Icon" width="35px" src="https://upload.wikimedia.org/wikipedia/commons/3/34/Windows_logo_-_2012_derivative.svg" />][windows]

[windows]: https://www.microsoft.com/

<br /><br />

## Usage

1. **Run the Script**

   - Open a PowerShell window.

   - Navigate to the directory where you have saved the script or provide the full path to the script.

   - Run the script by typing **_'.\text_keyword_search.ps1'_**

2. **Specify the Directory to Search**

   - You will be prompted to type the starting path to the directory you want to search in. Provide the full or relative path.

   - If the directory does not exist, the script will display an error message and exit.

3. **Specify the Text Pattern or Keyword**

   - After specifying the directory, you will be prompted to type the text pattern or keyword you want to search for within the text files.

4. **View the Results**

   - The script will search for text files (with a **_'.txt'_** extension) in the specified directory and its subdirectories.

   - If any matching text is found within the files, the script will display a table of results, including the file paths and matched text.

   - If no matches are found, a message will indicate that no matches were found for the specified text.

## Example

Suppose you want to search for the keyword "important" in text files located in **_'C:\MyDocuments'_**. You would run the script, enter **_'C:\MyDocuments'_** as the directory, and then enter "important" as the text pattern. The script will search for "important" within the text files and display the results.

## Notes

- This script supports searching in text files with a **_'.txt'_** extension. You can modify the script to include additional file types if needed.

- To run PowerShell scripts, ensure that your execution policy allows script execution. You can set it to "RemoteSigned" using the following command: **_'Set-ExecutionPolicy RemoteSigned'_**.

- Always be cautious when searching for text in files, especially if you are working with sensitive data or large directories, as it can take some time to complete.

#
<br>

⬅️ **[Home](https://github.com/infinity-set)**
