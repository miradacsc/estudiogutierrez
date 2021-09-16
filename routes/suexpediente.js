var express = require('express');
var router = express.Router();
var clientesModel = require('../models/clientesModel');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('suexpediente', {
    isSuexpediente:true
  });
});

router.post("/", async (req, res, next) => {
  try {
    var nombre = req.body.nombre;
    var apellido = req.body.apellido;
    var dni = req.body.dni;
    console.log(req.body);

    var data = await clientesModel.getNombreAndApellidoAndDni(nombre, apellido, dni);

    if (data != undefined) {

      res.render("suexpediente", {
        data
    });
    } else {
      res.render("contacto", {
        layout: "layout",
        error: true,
      });
    }
  } catch (error) {
    console.log(error);
  }
});




module.exports = router;
