# Text_checker
script that search for some word in all files in directory  

# File Search Shell Script

This shell script allows you to search for a specific word in all files within a directory.

## Usage

1. Clone the repository or download the script to your local machine.

2. Open a terminal or command prompt and navigate to the directory where the script is located.

3. Make the script executable by running the following command:

   ```shell
   chmod +x file_search.sh
   ```

4. Run the script using the following command:

   ```shell
   ./file_search.sh <search_word>
   ```

   Replace `<search_word>` with the word you want to search for.

5. The script will scan all files within the current directory and its subdirectories to find occurrences of the search word.

6. After scanning, the script will display a list of files that contain the search word along with the line numbers where the word is found.

## Example

To search for the word "example" in all files, run the following command:

```shell
./file_search.sh example
```

The script will search for the word "example" and display the results.

## Notes

- The script searches for an exact match of the search word. It is case-sensitive, so "example" and "Example" will be treated as different words.

- The script only searches for text files (files without binary content). Binary files and non-text files will be skipped.

- For large directories or a large number of files, the search process may take some time to complete.

- Make sure you have the necessary read permissions for the files and directories you want to search.

## License

This project is licensed under the [MIT License](LICENSE).


