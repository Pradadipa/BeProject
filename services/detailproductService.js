const { pool } = require('../config/databases')

//Get
const getAllDetailProduct = async () => {
    const connection = await pool.getConnection()
    try {
        const [detail] = await connection.query('SELECT * FROM detail_product')
        return detail
    } catch (error){
        console.error(error);
        return error
    } finally {
        connection.release()
    }
}

module.exports = { getAllDetailProduct }