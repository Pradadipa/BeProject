
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
async function getProductById(userid) {
    try {
      const user = await prisma.products.findUnique({
        where: {
          id: Number(userid)
        }
      })
      return user
    } catch (error) {
      throw new Error(error)
    }
    
  }

  


module.exports = { getAllProduct, getProductById }