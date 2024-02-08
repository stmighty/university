// just comment
//@desc Get all hospitals
//@route GET /api/v1/hospitals
//@access Public

exports.getHospitals = (req,res,next) => {
    res.status(200).json({sucess:true, msg:'Show all hospitals'});
};

// just comment
//@desc Get single hospital
//@route GET /api/v1/hospitals
//@access Public

exports.getHospital = (req,res,next) => {
    res.status(200).json({sucess:true, msg:`Get hospital ${req.params.id}`});
};

// just comment
//@desc Create a hospital
//@route POST /api/v1/hospitals
//@access Private

exports.createHospital = async(req,res,next) => {
    const hospital =await Hospital.create(req.body);
    res.status(201).json({
        success: true,
        data: hospital
    });
};

// just comment
//@desc Update single hospital
//@route PUT /api/v1/hospitals
//@access Private

exports.updateHospital = (req,res,next) => {
    res.status(200).json({sucess:true, msg:`Update hospital ${req.params.id}`});
};

// just comment
//@desc Delete single hospital
//@route DELETE /api/v1/hospitals
//@access Public

exports.deleteHospital = (req,res,next) => {
    res.status(200).json({sucess:true, msg:`Delete hospital ${req.params.id}`});
};

