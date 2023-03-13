'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class tblReporte extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      // tblReporte.belongsTo(models.tblUsuario,{
      //   foreignKey:'usuId',
      //   target_key:'repUsuId'
      // })
      tblReporte.associate=(models)=>{
        tblReporte.belongsTo(models.tblUsuario,{
          foreignKey:'repId',
          as:'tblUsuario'
        })
      }


      // tblReporte.belongsTo(models.tblTipoReporte,{
      //   foreignKey:'tipRepId',
      //   target_key:'repTipRepId'
      // })
      tblReporte.associate=(models)=>{
        tblReporte.belongsTo(models.tblTipoReporte,{
          foreignKey:'repId',
          as:'tblTipoReporte'
        })
      }

      // tblReporte.belongsTo(models.tblPeticion,{
      //   foreignKey:'petId',
      //   target_key:'repPetId'

      // })

      tblReporte.associate=(models)=>{
        tblReporte.belongsTo(models.tblPeticion,{
          foreignKey:'repId',
          as:'tblPeticion'
        })
      }
    }
  }
  tblReporte.init({
    repId: {
      type: DataTypes.INTEGER(5),
      primaryKey: true,
      autoIncrement: true
    },
    repEst: DataTypes.TINYINT,
    repDes: DataTypes.STRING,
    repUsuId: DataTypes.INTEGER,
    repTipRepId: DataTypes.INTEGER,
    repPetId: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'tblReporte',
  });
  return tblReporte;
};