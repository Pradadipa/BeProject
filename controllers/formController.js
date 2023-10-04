const formService = require('../services/formService')

//Get
const getAllForm = async (req, res) =>{
    try {
        const form = await formService.getAllForm()
        res.status(200).json({
        message: "Sukses Mengambil Input form",
        data: form
    })
    } catch (error){
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
}
//Post
const createForm =  async(req,res) => {
    try {
        const formId = await formService.createForm(req.body);
        res.status(201).json({ formId });
      } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
      }
}

module.exports = { createForm, getAllForm }