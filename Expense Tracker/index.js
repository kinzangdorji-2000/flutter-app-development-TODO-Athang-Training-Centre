const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');
const app = express();

// it will take json data as input from requests/frontend
app.use(express.json());
app.use(cors());

const categoryRoute = require('./modules/category/router');
const userRoute = require('./modules/users/router');

app.use('/category', categoryRoute);
app.use('/user', userRoute);

app.get('/', (request, response) => {
    response.send('API is running');
});

app.listen(8000, (req, res) => {
    console.log('Server is running on port 8000');
    mongoose.connect(
        "mongodb+srv://admin:admin@expensetracker.buh1lbz.mongodb.net/?retryWrites=true&w=majority&appName=ExpenseTracker",
    ).then((_) => {
        console.log('Connected to DB');
    }).catch(err => {
        console.log(err);
    });
});

// mongodb+srv://admin:admin@expensetracker.buh1lbz.mongodb.net/?retryWrites=true&w=majority&appName=ExpenseTracker