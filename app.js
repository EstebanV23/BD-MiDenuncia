const express = require('express')
const app = express()
const port = 8000

const sequelize=require('sequelize')


const modeloCalificacion=require('./models').tblCalificacion
const modeloComentario=require('./models').tblComentario
const modeloDocumento=require('./models').tblDocumento
const modeloImagen=require('./models').tblImagen
const modeloTipoPeticion=require('./models').tblTipoPeticion
const modeloPeticion=require('./models').tblPeticion
const modeloRol=require('./models').tblRol
const modeloReporte=require('./models').tblReporte
const modeloTipoReporte=require('./models').tblTiporeporte
const modeloUsuario=require('./models').tblUsuario

// app.use('/',(req,res)=>{
//    // modeloDocumento.create(req.body)
//     res.send(req.body)
// })


app.use(express.urlencoded({extended: true}))
app.use(express.json())

app.post('/crear',(req,res)=>{

  //  const {docTipo,docNum,docLugExpe}=req.body
    
//    modeloDocumento.create({
//     docTipo,docNum,docLugExpe
//    })
modeloDocumento.create(req.body)
    .then((data)=>{
        res.json({datos: data})
    }).catch((error)=>{
        res.json({error: error})
    })
})


app.get('/show',(req,res)=>{
    modeloPeticion.findAll(
      {
        include:[modeloTipoPeticion]}

    )
    //  {
    //   include:[{model:modeloDocumento}]}
      //attributes: { exclude: ['tblDocumentoDocId','tblRolRolId'] }}
    .then((data)=>{
        res.json({datos: data})
    }).catch((error)=>{
        res.json({error: error})
    })
})



app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})