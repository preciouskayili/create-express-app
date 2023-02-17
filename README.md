# Create REST API Project Script
This script creates a new REST API project with MongoDB, Node.js, and Express, and sets up the basic project structure.

## Prerequisites
Before running this script, make sure you have the following software installed:
- Node.js (https://nodejs.org)
- MongoDB (https://www.mongodb.com)
## Usage
- Download or clone this repository.
- Open a terminal and navigate to the directory where the `create-express-app.sh` file is located.
- Run the command ```#!/bin/bash chmod +x create-express-app.sh``` to make the script executable.
- Run the command ```#!/bin/bash ./create-express-app.sh``` to create a new REST API project.

### The script will prompt you for the following information:
- The name of your new project
- The directory where you want to create the project (default is the current directory)


### After you provide this information, the script will create a new directory with the specified project name, and will set up the following files and directories:

- `app.js`: The main application file, which sets up the server and routing.
- `config.js`: A configuration file for the project.
- `controllers/`: A directory for your controller files.
- `models/`: A directory for your model files.
- `routes/`: A directory for your route files.
- `helpers/`: A directory for your helper files.
- `package.json`: A file for managing the project's dependencies.
- `README.md`: A file for documenting your project.


## Customization
If you want to customize the basic structure of the project, you can modify the `create-express-app.sh` file directly to change the directories and files that are created.

## Credits
This script was created by Precious Kayili. Feel free to use it and modify it as you see fit. If you find any bugs or have suggestions for improvement, please let me know!
