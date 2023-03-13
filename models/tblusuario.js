'use strict';
const {
  Model
} = require('sequelize');
const tblrol = require('./tblrol');
module.exports = (sequelize, DataTypes) => {
  class tblUsuario extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      // tblUsuario.belongsTo(models.tblDocumento,{
      //   foreingkey:'docId',
      //   target_Key:'usuDocId'
      // })

      // tblUsuario.associations=(models)=>{
      //   tblUsuario.belongsTo(models.tblDocumento,{
      //     foreingkey:'usuId',
      //     as:'tblDocumento'
      //   })
      // }
      tblUsuario.belongsTo(models.tblDocumento,{
        foreignKey:'usuDocId',

      })

      tblUsuario.belongsTo(models.tblRol,{
        foreignKey: 'usuRolId',
       
      })
      // tblUsuario.associations=(models)=>{
      //   tblUsuario.belongsTo(models.tblRol,{
      //     foreingkey:'usuRolId',
      //     as:'tblRol'
      //   })
      // }


      // tblUsuario.hasOne(models.tblCalificacion,{
      //   foreingkey:'calUsuId'
      // })

      tblUsuario.associate=function(models) {
        tblUsuario.hasOne(models.tblCalificacion,{
          foreignKey:'usuId',
          as:'tblCalificacion'
        })
      }

      tblUsuario.hasMany(models.tblPeticion,{
        foreignKey:'petUsuId'
      })

      // tblUsuario.associate=function(models) {
      //   tblUsuario.hasMany(models.tblPeticion,{
      //     foreingkey:'usuId',
      //     as:'tblPeticion'
      //   })
      // }
      

      // tblUsuario.hasMany(models.tblReporte,{
      //   foreignKey:'repUsuId'
      // })
      tblUsuario.associate=function(models) {
        tblUsuario.hasOne(models.tblReporte,{
          foreignkey:'usuId',
          as:'tblreporte'
        })
      }

      // tblUsuario.hasMany(models.tblComentario,{
      //   foreignKey:'comUsuId'
      // })
      tblUsuario.associate=function(models) {
        tblUsuario.hasOne(models.tblComentario,{
          foreignkey:'usuId',
          as:'tblComentario'
        })
      }

    }

    
  }
  tblUsuario.init({
    usuId: {
      type: DataTypes.INTEGER(5),
      primaryKey: true,
      autoIncrement: true
    },
    usuAli: DataTypes.STRING,
    usuApe: DataTypes.STRING,
    usuEma: DataTypes.STRING,
    usuPas: DataTypes.STRING,
    usuTel: DataTypes.STRING,
    usuEst: DataTypes.TINYINT,
    usuDir: DataTypes.STRING,
    usuRolId: DataTypes.INTEGER,
    usuDocId: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'tblUsuario',
  });
  return tblUsuario;
};