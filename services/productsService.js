const { pool } = require('../config/databases')
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

async function getProductById(productId) {
    try {
        const product = await prisma.products.findUnique({
            where: {
                id: 1
            },
            // select: {
            //     id : true
            // }
        });
        return product;
    } catch (error) {
        throw new Error(error);
    }
}


module.exports = { getAllProduct, getProductById }