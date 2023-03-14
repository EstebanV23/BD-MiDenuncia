const express =require('express')
const router = express.Router();
const sequelize=require('sequelize')
const modeloUsuario=require('../../models').tblUsuario

router.post('/crear',(req,res)=>{
    const {usuAli, usuNom, usuApe, usuEma, usuPas}=req.body;
    modeloUsuario.create({
        usuAli, usuNom, usuApe, usuEma, usuPas
    })
   
    res.send('resuesta enviada')
})

module.exports = router;