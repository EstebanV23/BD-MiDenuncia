const {Router}= require('express');

const router=Router();

const postUsuario=require('./routeUser/routeCrear')
const getUsuario=require('./routeUser/routerListar')

router.use('/',postUsuario)
router.use('/',getUsuario)




//const router=require('./routeUser/routeCrear');
module.exports= router
