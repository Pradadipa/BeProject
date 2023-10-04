const productService = require('../services/productsService')

//Get
const getAllProduct = async (req, res) => {
   try{
      const product = await productService.getAllProduct()
      res.status(200).json({
      data: product
   })
   } catch (error){
      console.error(error);
      res.status(500).json({ error: 'Internal server error' });
   }
}



//Get by Id
const getProductById = async (request, res) => {
   const { userid } = request.params;
   try {
     const user = await productService.getProductById(userid);
     if (!user) {
       return res.status(404).json({ error: 'User not found' });
     }
     res.status(200).json({
       message: "Successfully fetched user",
       data: user
     });
   } catch (error) {
     console.error(error);
     res.status(500).json({ error: 'Internal server error' });
   }
 }

 module.exports = { getAllProduct, getProductById }