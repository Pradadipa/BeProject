const { pool } = require('../config/databases')
const { prisma } = require('../config/prisma')

//Get
const getAllAbout = async () => {
    try {
        const members = prisma.members.findMany()
        return members
    } catch (error){
        console.error(error);
        return error
    }
}

module.exports = { getAllAbout }