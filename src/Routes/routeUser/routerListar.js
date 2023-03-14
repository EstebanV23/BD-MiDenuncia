const express =require('express')
const router = express.Router();
const sequelize=require('sequelize')
const modeloUsuario=require('../../models').tblUsuario

router.get('/listar',(req,res)=>{
    
    modeloUsuario.findAll()
    .then((data)=>{
        res.json({datos: data})
    }).catch((error)=>{
        res.json({error: error})
    })
   
    //res.send('resuesta recibida')
})

module.exports = router;