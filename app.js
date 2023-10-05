require('dotenv').config();
const express = require('express');
const { productRoute } = require('./routes/productRoutes')
const { formRoute } = require('./routes/formRoutes')
const { aboutRoute } = require('./routes/aboutRoutes')
// const { pool } = require('./config/databases')
const cors = require('cors')

const app = express();
const PORT = process.env.PORT;

app.use(cors())
app.use(express.json());
app.use(express.urlencoded({ extended: true}));

//rute product
app.use("/", productRoute)
// rute untuk form
app.use("/", formRoute )
// rute untuk about
app.use("/about", aboutRoute)



app.listen(PORT, () => {
    console.log(`server is running on http://localhost:${PORT}`);
})