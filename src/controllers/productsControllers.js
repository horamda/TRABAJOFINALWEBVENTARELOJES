const databaseConnection = require("../../config/database")


const getHomePage= (req,res)=>{
    //res.send('esto devuelve el inicio')
    res.render('pages/inicio')  
}

const getAllProducts = (req, res)=>{
    databaseConnection.query("SELECT * FROM productos ",(error,data)=>{
        if(error){
            console.log(error)
        }else{
           // const newData = data.filter((info)=> info.category === "running");
            res.render('pages/products',{
                products:data
            })
        }
    })
}
const getProductsById = (req, res)=>{
    databaseConnection.query("SELECT * FROM productos WHERE destacado = 1 ",(error,data1)=>{
        if(error){
            console.log(error)
        }else{
            res.render('pages/detailsproduct',{
                destacado:data1
            })
        }
    })
}

const getForm = (req, res) =>{
    res.render('pages/addproducts')
}
const getNosotros = (req, res) =>{
    //res.send('esto devuelve la pagina nosotros....')
    res.render('pages/nosotros')
}

const addNewProduct =(req,res)=>{
    const {nombre_reloj,precio,oferta,marca,imagen,destacado}= req.body

    databaseConnection.query("INSERT INTO productos (nombre_reloj,precio,oferta,marca,imagen,destacado)VALUES(?,?,?,?,?,?) ",[nombre_reloj,parseFloat(precio),parseFloat(oferta),marca,imagen,destacado],(error,data)=>{
        if(error){
            console.log(error)
        }else{
            res.render('pages/inicio')
        }
    })
}
const contactenos=(req,res)=>{
    res.render('pages/contactenos')
}

const addNewUser =(req,res)=>{
    const {nombre,apellido,email,phone,message}= req.body
    console.log ('fname')
    databaseConnection.query("INSERT INTO usuarios (nombre,apellido,email,celular,mensaje)VALUES(?,?,?,?,?) ",[nombre,apellido,email,parseInt(phone),message],(error,data)=>{
        if(error){
            console.log(error)
        }else{
            res.render('pages/inicio')
        }
    })
}

module.exports = {getAllProducts, getProductsById, getForm,addNewProduct,getHomePage,getNosotros,contactenos,addNewUser}