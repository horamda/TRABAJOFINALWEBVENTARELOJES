const express = require('express')
const path = require('path')
const databaseConnection = require('../config/database')
const productsRoutes = require('./routes/productsRoutes')
const homeRoutes = require('./routes/homeRoutes')
const mailRoutes = require ('./routes/emailRoutes')
const productDetails=require ('./routes/productsRoutes')
const nosotrosRoutes = require('./routes/productsRoutes')
const contactenosRoutes=require('./routes/productsRoutes')
const { contactenos } = require('./controllers/productsControllers')

// Inicializar express
const app = express()

// Conectarnos a la DB
databaseConnection.connect()


app.use(express.json());
app.use(express.urlencoded({extended: false}));

// Configurations
app.set("views", path.join(__dirname, "views"))
app.set("view engine", ".ejs")

// Routes

app.use('/inicio', homeRoutes)
app.use('/detailsproduct',productDetails)
app.use('/nosotros',nosotrosRoutes)
app.use('/products', productsRoutes)
app.use('/sendMail',mailRoutes)
app.use('/contactenos',contactenosRoutes)
app.use(express.static(path.join(__dirname,'/public')));



app.listen(4000, ()=>{
    console.log('Servidor corriendo en puerto 4000')
})