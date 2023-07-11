import os

def replace_fields_in_file(file_path):
    with open(file_path, 'r') as file:
        content = file.read()

    # Replace the fields
    content = content.replace('FROM eventlog', 'FROM cloudtrail_logs')
    content = content.replace('api.service.name', 'eventSource')
    content = content.replace('api.operation', 'eventName')

    with open(file_path, 'w') as file:
        file.write(content)

def replace_fields_in_folder(folder_path):
    for root, _, files in os.walk(folder_path):
        for file in files:
            if file.endswith('.txt'):  # Process only txt files
                file_path = os.path.join(root, file)
                replace_fields_in_file(file_path)

# Replace fields in a specific folder
folder_path = '.'
replace_fields_in_folder(folder_path)
