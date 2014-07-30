docker-nodejs
=============

A Node JS Docker container

# Container # 

Quando il container parte viene eseguito lo script

```bash
 start.sh
 ```
Il conatiner espone la porta `8080`.

# Build Image #

Per creare  la propia immagine usando questo repo lanciare

```bash
docker build -t <your_image_name>/nodejs https://github.com/beinnova/docker-nodejs.git
```

# Start Image #

Lo script `start.sh` si aspetta di tropvare il file `pacakage.json` nel path `/home/app`.
Per prima cosa lancia un 

```bash
npm install

```

e subito dopo lancia l'app

```bash
npm start

```
Inserite quindi nelvostro `package.json` la sezione 

```javascript
"scripts":
		{
			"start":"nodejs app.js"
		}
```

A questo punto avviate l'immagine

```bash
docker run -it -v <your/path/project>:/home/app -p <your_local_port>:8080 <your_name>/nodejs

```