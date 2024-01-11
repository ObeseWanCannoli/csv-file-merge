# csv-file-merge

  ______   .______    _______     _______. ___________    __    ____  ___      .__   __.   ______     ___      .__   __. .__   __.   ______    __       __  
 /  __  \  |   _  \  |   ____|   /       ||   ____\   \  /  \  /   / /   \     |  \ |  |  /      |   /   \     |  \ |  | |  \ |  |  /  __  \  |  |     |  | 
|  |  |  | |  |_)  | |  |__     |   (----`|  |__   \   \/    \/   / /  ^  \    |   \|  | |  ,----'  /  ^  \    |   \|  | |   \|  | |  |  |  | |  |     |  | 
|  |  |  | |   _  <  |   __|     \   \    |   __|   \            / /  /_\  \   |  . `  | |  |      /  /_\  \   |  . `  | |  . `  | |  |  |  | |  |     |  | 
|  `--'  | |  |_)  | |  |____.----)   |   |  |____   \    /\    / /  _____  \  |  |\   | |  `----./  _____  \  |  |\   | |  |\   | |  `--'  | |  `----.|  | 
 \______/  |______/  |_______|_______/    |_______|   \__/  \__/ /__/     \__\ |__| \__|  \______/__/     \__\ |__| \__| |__| \__|  \______/  |_______||__| 
                                                                                                                                                            

# CSV File Merger

This simple Bash script allows you to merge multiple CSV files located in a specified folder into a single CSV file. The merged file will contain the headers from the first CSV file, followed by the data from all the CSV files in the specified folder (excluding headers).

## Prerequisites

- **Bash**: Ensure that you have Bash installed on your system.

## Usage

1. **Download the Script:**
   - Download the provided script file (`merge_csv.sh`) to your local machine.

2. **Make the Script Executable:**
   - Open a terminal window and navigate to the folder containing the script.
   - Run the following command to make the script executable:
     ```bash
     chmod +x merge_csv.sh
     ```

3. **Run the Script:**
   - Execute the script by running the following command:
     ```bash
     ./merge_csv.sh
     ```

4. **Follow the Prompts:**
   - The script will prompt you to enter the folder path containing the CSV files you want to merge.
   - Provide the full path to the folder and press Enter.

5. **Review Outputs:**
   - The script will check if the provided folder path is valid and contains at least two CSV files.
   - If the folder path is invalid or doesn't meet the minimum file requirement, the script will exit with an error message.

6. **Merged File Output:**
   - If the folder and file conditions are met, the script will merge the CSV files.
   - An output file named `merged.csv` will be created in the specified folder.
   - If the output file already exists, it will be removed before creating the new merged file.

7. **Completion Message:**
   - Once the merging process is complete, the script will display a message indicating that the merged file has been created.

## Notes

- Make sure the script has the necessary permissions to read, write, and execute in the specified folder.
- This script assumes that the CSV files have the same structure (same columns) and that the headers are present in the first row of each file.
- If any issues occur during the merging process, relevant error messages will be displayed in the terminal.
