
const { request } = require('express');
const { prisma } = require('../config/prisma')

//Get All
const getAllProduct = async () => {
    try{
        const product = prisma.products.findMany()
        return product
    } catch (error){
        console.error (error);
        return (error)
    }
}

//Get by Id
async function getProductById(byId) {
    try {
      const product = await prisma.products.findUnique({
        where: {
          id: parseInt(byId) 
        }
      })
      return product
    } catch (error) {
      throw new Error(error)
    }
    
  }

  


module.exports = { getAllProduct, getProductById }