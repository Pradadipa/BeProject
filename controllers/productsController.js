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
   const { byId } = request.params; // Use 'byId' instead of 'userid'
   try {
     const product = await productService.getProductById(byId); // Pass 'byId' as the argument
     if (!product) {
       return res.status(404).json({ error: 'Product not found' });
     }
     res.status(200).json({
       message: 'Successfully fetched product',
       data: product,
     });
   } catch (error) {
     console.error(error);
     res.status(500).json({ error: 'Internal server error' });
   }
 };

 module.exports = { getAllProduct, getProductById }