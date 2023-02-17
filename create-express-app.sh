#!/bin/bash

echo "Creating new REST API project..."

# Prompt the user for the project name
read -p "Enter the project name: " PROJECT_NAME

# Create a new directory for the project
mkdir $PROJECT_NAME
cd $PROJECT_NAME

# Initialize a new Node.js project
npm init -y

# Install the necessary packages
npm install express mongoose body-parser cors dotenv

# Create the project files
touch index.js
mkdir models
mkdir controllers
mkdir routes
mkdir config

# Create the MongoDB connection configuration file
touch config/db.js

# Add the MongoDB connection details to the configuration file
echo "export const dbConfig = {
    url: 'mongodb://localhost:27017/$PROJECT_NAME'
}" >> config/db.js

# Write the basic Express server code to index.js
echo "import express from 'express';
import bodyParser from 'body-parser';
import cors from 'cors';
import mongoose from 'mongoose';

const app = express();

// Import routes
import routes from './routes';

// Import database configuration
import { dbConfig } from './config/db';

// Set up body-parser middleware
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// Set up CORS
app.use(cors());

// Connect to the database
mongoose.connect(dbConfig.url, { useNewUrlParser: true })
    .then(() => console.log('MongoDB connected'))
    .catch(err => console.log(err));

// Use routes
app.use('/api', routes);

// Start the server
const port = process.env.PORT || 3000;
app.listen(port, () => console.log('Server started on port ' + port));" >> index.js

# Create a basic route and controller
echo "import express from 'express';
const router = express.Router();

router.get('/', (req, res) => {
    res.send('Hello, world!');
});

export default router;" >> routes/index.js

echo "import express from 'express';
const router = express.Router();

import { getHello } from '../controllers/helloController.js';

router.get('/', getHello);

export default router;" >> routes/helloRoutes.js

echo "import express from 'express';
const router = express.Router();

import helloRoutes from './helloRoutes.js';

router.use('/hello', helloRoutes);

export default router;" >> routes/index.js

echo "export const getHello = (req, res) => {
    res.send('Hello, world!');
};" >> controllers/helloController.js

echo "Project created successfully."
