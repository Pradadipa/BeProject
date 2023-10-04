const { pool } = require('../config/databases')
const { prisma } = require('../config/prisma')

//Get
const getAllForm = async () => {
    try{
        const form = prisma.form.findMany()
        return form
    } catch (error){
        console.error(error);
        return error
    }
       
}

//Post
const createForm = async (form) => {
    try{
        const createdForm = await prisma.form.create({
            data: {
                name : form.name,
                email : form.email,
                message : form.message,
            }
            })
        return createdForm;
    } catch (error){
        console.error(error);
        return error
    }
}

module.exports =  { createForm, getAllForm }