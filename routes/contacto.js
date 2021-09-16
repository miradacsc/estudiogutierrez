var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('contacto', {
    isContacto:true
  });
});

router.post('/', async(req, res, next) => {
  console.log(req.body);
  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var email = req.body.email;
  var tel = req.body.tel;
  var mensaje = req.body.comentario;

  var obj = {
    to: 'miradacsc@gmail.com',
    subject: 'Contacto desde web Estudio Gutierrez y asociados',
    html: nombre + ', ' + apellido + ': Se contactó a través de la web y quiere que lo contactemos a este número  ' + tel + '.<br/> Su consulta es la siguiente: ' + mensaje + '.<br/> Su email es: ' + email + '.'
  }

  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });
  
  var info = await transport.sendMail(obj);

  res.render('contacto', {
    isContacto:true,
    message: 'Mensaje enviado correctamente'
  });
});

module.exports = router;
