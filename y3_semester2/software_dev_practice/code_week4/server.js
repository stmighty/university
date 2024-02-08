const express = require('express');
const dotenv = require('dotenv');
const connectDB = require('./config/db');


//Load env vars
dotenv.config({path: './config/config.env'});


//connect to databases
connectDB();


//Route files
const hospitals = require('./routes/hospitals');
const app=express();


//Body parser
app.use(express.json());
app.use('/api/v1/hospitals', hospitals)

const PORT=process.env.port || 5050;

const server = app.listen(PORT, console.log('Server running in', process.env.NODE_ENV, 'mode on port ', PORT));


//Handle unhandled promise rejections
process.on('unhandledRejection', (err,promise) => {
    console.log(`Error: ${err.message}`);
    //close server & exit project
    server.close(() => process.exit(1));
});


