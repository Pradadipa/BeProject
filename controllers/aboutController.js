const aboutService = require('../services/aboutService')

//Get
const getAllAbout = async (req, res) =>{
    try {
        const member = await aboutService.getAllAbout()
        res.status(200).json({
        members: member
    })
    } catch (error){
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
    
}

module.exports = { getAllAbout }