var pool = require('./bd');

async function getNombreAndApellidoAndDni(nombre, apellido, dni) {
    try {
        var query = 'select * from clientes where nombre = ? and apellido = ? and dni = ? limit 1';
        var rows = await pool.query(query, [nombre, apellido, dni]);
        return rows[0];

    }catch(error){
        throw error
    }
}

module.exports = { getNombreAndApellidoAndDni}