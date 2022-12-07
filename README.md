# Español

## Instrucciones

### Ejecución

Para la ejecución del script se debe poner el comando
```
.\mern_app_creator.bat
```
en una consola CMD.

El script se ejecutará y una vez terminada su ejecución quedarán dos carpetas, una para la aplicación de React en el Frontend y otra para el servidor Express en Node.

### Estructura del API en Express

Dentro de la carpeta del servidor Express se creó una API la cual permite conectarse con una base de datos Mongo, la estructura del API contenida en la carpeta 'nombre-app_express_server' es la siguiente:
```
├── nombre-app_express_server
│   ├── controllers
│   │   └── basicController
│   │   │   └── basicController.js
│   │   │   └── index.js
│   ├── db
│   │   └── connection.js
│   ├── models
│   │   └── basic.model.js
│   ├── node_modules
│   │   └── ...
│   ├── routes
│   │   └── firstversion.py
│   └── app.js
│   └── package-lock.json
│   └── package.json
```

### Configuración servidor Express

Una vez creado el servidor Express, lo único que tendremos que configurar antes de correrlo será la URL de nuestra base de datos, en el ejemplo se trabaja una base de datos Mongo en Atlas MongoDB, por lo que únicamente se tendrán que introducir las credenciales de la conexión como el **nombre de la base de datos** y la **contraseña**.

### Corriendo la APP

Por último, con la conexión a Mongo configurada, solo tendremos que ejecutar el archivo 'run_mern_project.bat' ubicandonos en la carpeta raíz del proyecto y escribiendo el comando
```
.\run_mern_project.bat
```
lo cual nos abrirá dos nuevas ventanas de consola en la cual estarán corriendo tanto el Frontend como el Backend.

### *¡Que te diviertas y aumentes tu productividad! ;)*

# English

## Instructions

### Execution

First, in a Command Console you need to execute the next line:
```
.\mern_app_creator.bat
```

The script will be executed and at the finish there will be two folders, the one for the React Frontend application and the other for the Express Node server.

### Express API structure

Inside the Express server folder will be created an API which allows to connect to a Mongo database. The API structure inside the 'app-name_express_server' folder is:
```
├── app-name_express_server
│   ├── controllers
│   │   └── basicController
│   │   │   └── basicController.js
│   │   │   └── index.js
│   ├── db
│   │   └── connection.js
│   ├── models
│   │   └── basic.model.js
│   ├── node_modules
│   │   └── ...
│   ├── routes
│   │   └── firstversion.py
│   └── app.js
│   └── package-lock.json
│   └── package.json
```

### Express server configuration

Once the Express server is created, the only thing we will have to configure before running will be the database URL, in the example we work with a Atlas MongoDB, so you only need to write the connection credential like the **database name** and the **password**.

### Running the APP

Finally with the Mongo connection configured we will only have to execute the 'run_mern_project.bat' file, going to the root folder and typing the command
```
.\run_mern_project.bat
```
which will open two new console windows which will have running the Frontend and the Backend.


### *Enjoy and increase your productivity! ;)*
<br />

By
```
 _                                  
| |                                 
| |__    __ _  ___  ___   ___   ___ 
| '_ \  / _` |/ __|/ __| / _ \ / _ \
| |_) || (_| |\__ \\__ \|  __/|  __/
|_.__/  \__,_||___/|___/ \___| \___|
```
                            
01100011011011110110111000100000 00111100001100110001010