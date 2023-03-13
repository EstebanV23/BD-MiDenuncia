'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class tblPeticion extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      // tblPeticion.belongsTo(models.tblTipoPeticion,{
      //   foreignKey:'tipPetId',
      //   target_key:'petTipoPetId'
      // })

      tblPeticion.associate=(models)=>{
        tblPeticion.belongsTo(models.tblTipoPeticion,{
          foreignKey:'petId',
          as:'tblTipoPeticion'
        })
      }

      // tblPeticion.hasMany(models.tblPeticion,{
      //   foreignKey:'repPetId'
      // })
      tblPeticion.associate=(models)=>{
        tblPeticion.belongsTo(models.tblPeticion,{
          foreignKey:'petId',
          as:'tblPeticion'
        })
      }

      // tblPeticion.hasMany(models.tblComentario,{
      //   foreignKey:'comPetId'
      // })
      tblPeticion.associate=(models)=>{
        tblPeticion.belongsTo(models.tblComentario,{
          foreignKey:'petId',
          as:'tblComentario'
        })
      }

      // tblPeticion.hasMany(models.tblImagen,{
      //   foreignKey:'imgPetId'

      // })

      tblPeticion.associate=(models)=>{
        tblPeticion.belongsTo(models.tblImagen,{
          foreignKey:'petId',
          as:'tblImagen'
        })
      }
      
    }
  }
  tblPeticion.init({
    petId: {
      type: DataTypes.INTEGER(5),
      primaryKey: true,
      autoIncrement: true
    },
    petFec: DataTypes.DATE,
    petLoc: DataTypes.STRING,
    petBar: DataTypes.STRING,
    petEst: DataTypes.TINYINT,
    petAsu: DataTypes.STRING,
    petDes: DataTypes.TEXT,
    petSol: DataTypes.TEXT,
    petApo: DataTypes.INTEGER,
    petTipoPetId: DataTypes.TINYINT,
    petUsuId: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'tblPeticion',
  });
  return tblPeticion;
};