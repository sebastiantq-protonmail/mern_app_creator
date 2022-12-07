@echo off
set /p APP_NAME= "Ingrese el nombre de la app MERN (Solo letras y/o numeros): "
@REM echo %APP_NAME%

@REM Ruta donde se está ejecutando el script
set RUTA=%~d0%~p0
@REM echo %RUTA%

cd %RUTA%

@REM Creación del Frontend en React
call npm init react-app %APP_NAME%-react-app 

@REM Creación del Backend en Express
mkdir %APP_NAME%-express-server
cd %APP_NAME%-express-server

(
echo {
echo  "name": "%APP_NAME%-express-server",
echo  "version": "0.1.0",
echo  "description": "",
echo  "main": "app.js",
echo  "scripts": {
echo    "start": "node app",
echo    "dev": "nodemon app"
echo  },
echo  "keywords": [],
echo  "author": "",
echo  "license": "ISC",
echo  "dependencies": {
echo    "bcrypt": "^5.0.1",
echo    "body-parser": "^1.20.0",
echo    "connect-mongo": "^3.2.0",
echo    "cookie-parser": "^1.4.6",
echo    "cors": "^2.8.5",
echo    "express": "^4.18.1",
echo    "express-session": "^1.17.3",
echo    "jsonwebtoken": "^8.5.1",
echo    "mongoose": "^6.6.1",
echo    "open": "^8.4.0",
echo    "passport": "^0.6.0",
echo    "passport-local": "^1.0.0"
echo  },
echo  "devDependencies": {
echo    "nodemon": "^2.0.20"
echo  }
echo }
) > "package.json"

@REM Instalamos los paquetes básicos
call npm install
 
mkdir controllers
mkdir db
mkdir models
mkdir routes

(
echo const express = require("express"^)
echo const cors = require("cors"^) // CORS Policy para recibir datos desde React en localhost
echo.
echo const app = express(^)
echo.
echo app.use(cors(^)^);
echo app.use(express.json(^)^);
echo.
echo const firstversion = require("./routes/firstversion"^)
echo.
echo // Enrutamiento para modularidad
echo app.use("/firstversion", firstversion^)
echo.
echo // Conexión con base de datos MongoDB
echo const connection = require("./db/connection"^)
echo.
echo app.listen(5000, async (^) =^> {
echo     console.log("Servidor iniciado en el puerto " + 5000^)
echo }^)
echo.
echo module.exports = app
) > "app.js"

cd controllers

mkdir basicController

cd basicController

(
echo const BasicModel = require("../../models/basic.model")
echo.
echo const post = async (req, res^) =^> {
echo    return res.json({ basicResponse: "testing get response" }^)
echo }
echo.
echo const get = async (req, res^) =^> {
echo    return res.json({ basicResponse: "testing get response" }^)
echo }
echo.
echo const put = async (req, res^) =^> {
echo    return res.json({ basicResponse: "testing get response" }^)
echo }
echo.
echo const del = async (req, res^) =^> {
echo    return res.json({ basicResponse: "testing get response" }^)
echo }
echo.
echo module.exports = { post, get, put, del }
) > "basicController.js"

(
echo const basicController = require("./basicController"^)
echo.
echo module.exports = { basicController }
) > "index.js"

cd ../../db

(
echo const mongoose = require("mongoose"^)
echo.
echo // Credenciales de base de datos
echo const dbname = ""
echo const password = ""
echo.
echo const uri = `mongodb+srv://admin:${password}@cluster0.yujgy4i.mongodb.net/${dbname}?retryWrites=true^&w=majority`
echo.
echo mongoose.connect(uri, {useNewUrlParser: true, useUnifiedTopology: true}^)
echo         .then((^) =^> console.log("Conexión establecida con MongoDB"^)^)
echo         .catch((err^) =^> console.error(err^)^)
echo.
echo module.exports = mongoose.connection
) > "connection.js"

cd ../models

(
echo const { model, Schema } = require("mongoose"^)
echo.
echo // Esquema de colección Users
echo const BasicSchema = new Schema({
echo     primary_key: { type: String, required: true, index: { unique: true } }
echo }^)
echo.
echo const BasicModel = model("users", BasicSchema^)
echo.
echo module.exports = BasicModel
) > "basic.model.js"

cd ../routes

(
echo const express = require("express"^)
echo const router = express.Router(^)
echo.
echo const basicController = require("../controllers/basicController"^)
echo.
echo router.post("/", basicController.post^)
echo router.get("/", basicController.get^)
echo router.put("/", basicController.put^)
echo router.delete("/", basicController.del^)
echo.
echo module.exports = router
) > "firstversion.js"

cd ../..

(
echo @echo off
echo cmd /K "cd %APP_NAME%-react-app && npm start"
echo cmd /K "cd %APP_NAME%-express-server && npm run dev"
echo echo Ejecutando proyecto %APP_NAME%
) > "run_mern_project.bat"

echo.
echo App MERN creada con exito :)

pause