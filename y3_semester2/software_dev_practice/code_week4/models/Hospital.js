const mongoose = require('mongoose');

const HospitalSchema = new mongoose.Schema({
    name: {
        type: String,
        require: [true, 'Please add a name'],
        unique: true,
        trim: true,
        maxlength:[200, 'name cannot be more than 200 characters']
    },
    address: {
        type: String,
        required: [true, 'please add an address']
    },
    district: {
        type: String,
        required: [true, 'please add a district']
    },
    province: {
        type: String,
        required: [true, 'please add a province']
    },
    postalcode: {
        type: String,
        required: [true, 'please add a postal code'],
        maxlength: [5, 'postal code cannot be more than 5 digits']
    },
    tel:{
        type: String
    },
    region: {
        type: String,
        required: [true, 'please add a region']
    }
});

module.exports = mongoose.model('Hospital', HospitalSchema);