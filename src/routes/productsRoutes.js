// CRUD
// C: Create
// R: Read
// U: Update
// D: Delete

const express = require('express')
const { getAllProducts, getProductsById ,getForm,addNewProduct,getNosotros,contactenos,addNewUser} = require('../controllers/productsControllers')


const productsRoutes = express.Router()

const homeRoutes = require('./homeRoutes')
//productsRoutes.get("/", getAllProducts)

productsRoutes.get('/detailsproduct', getProductsById)
productsRoutes.get('/allProducts', getAllProducts)
productsRoutes.get('/addProduct', getForm)           /*ok*/
productsRoutes.get('/inicio',homeRoutes)
productsRoutes.get('/nosotros',getNosotros)          
productsRoutes.get('/contactenos',contactenos)

productsRoutes.post("/addProduct", addNewProduct)
productsRoutes.post("/contactenos",addNewUser)

module.exports = productsRoutes