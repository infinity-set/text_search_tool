# Define the directory to search in.
$directoryToSearch = Read-Host "Type a starting path to the directory"

# Check if the directory exists
if (Test-Path -Path $directoryToSearch -PathType Container) {

    # Prompt the user to define the text pattern or keyword to search for.
    $searchText = Read-Host "Type the text pattern or keyword to search"
} else {
    # If the directory does not exist, display an error message and exit.
    Write-Host "The directory '$directoryToSearch' does not exist."
    exit
}

# Search for text files in the specified directory and its subdirectories.
$textFiles = Get-ChildItem -Path $directoryToSearch -Filter "*.txt" -File -Recurse

# Initialize an array to store the results.
$results = @()

# Loop through each text file and search for the specified text.
foreach ($file in $textFiles) {
    # Read the content of the current text file.
    $content = Get-Content -Path $file.FullName

    # Check if the content matches the search text.
    if ($content -match $searchText) {
        # Add the file path and matched text to the results array.
        $results += @{
            FilePath = $file.FullName
            MatchedText = $content | Select-String -Pattern $searchText | ForEach-Object { $_.Line }
        }
    }
}

# Display the search results.
if ($results.Count -eq 0) {
    # If no matches were found, display a message.
    Write-Host "No matches found for '$searchText' in the specified directory and its subdirectories."
} else {
    # Display the search results in a table format.
    Write-Host "Search results for '$searchText':"
    $results | Format-Table -AutoSize
}

