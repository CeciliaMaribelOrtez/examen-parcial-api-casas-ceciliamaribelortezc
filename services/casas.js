const db = require('./db');
const helper = require('../helper');
const config = require('../config');

async function getMultiple(page = 1){
  const offset = helper.getOffset(page, config.listPerPage);
  const rows = await db.query(
    `SELECT id, precios, baños, camas, direccion, ciudad, foto
    FROM casas LIMIT ${offset},${config.listPerPage}`
  );
  const data = helper.emptyOrRows(rows);
  const meta = {page};

  return {
    data,
    meta
  }
}
async function create(casas){
    const result = await db.query(
      `INSERT INTO casas
      (precios, baños, camas, direccion, foto ,ciudad) 
      VALUES 
      ('${casas.precios}','${casas.baños}', '${casas.camas}', '${casas.direccion}','${casas.foto}', '${casas.ciudad}')`
    );
  
    let message = 'Error in creating casas';
  
    if (result.affectedRows) {
      message = 'casas created successfully';
    }
  
    return {message};
  }

  async function update(id, casas){
    const result = await db.query(
      `UPDATE casas
      SET precios="${casas.precios}",baños="${casas.baños}", camas="${casas.camas}", 
      direccion="${casas.direccion}",ciudad="${casas.ciudad}", foto="${casas.foto}" 
      WHERE id=${id}` 
    );
  
    let message = 'Error in updating casas';
  
    if (result.affectedRows) {
      message = 'casas updated successfully';
    }
  
    return {message};
  }
  async function remove(id){
    const result = await db.query(
      `DELETE FROM casas WHERE id=${id}`
    );
  
    let message = 'Error in deleting casas';
  
    if (result.affectedRows) {
      message = 'casas deleted successfully';
    }
  
    return {message};
  }
  module.exports = {
    getMultiple,
    create,
    update,
    remove
  };
