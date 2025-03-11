# Get started with paper-qa with Ollama

This project is a simple example of how to use paper-qa with Ollama.

## Requirements:
- Python 3.12
- [Paper-qa](https://github.com/Future-House/paper-qa) with [Ollama](http://ollama.com/)
- Document file to be used as a knowledge base and put in the `src` folder

*Note*: You should have at least 8 GB of RAM available to run the 7B models, 16 GB to run the 13B models, and 32 GB to run the 33B models.


## Install with Docker
- You can add the model you need to download when running the container in the `entrypoint.sh` file

- Run build:
```
docker compose build
```
- Run container:
```
docker compose up -d
```
- Now, you can access the container `paperqa` and run the file in the `src` folder to test:
```
docker exec -it paperqa bash
cd src/
python ollama.py
```

## Install in Ubuntu

#### Install Python 3.12:
```
sudo apt update
sudo apt upgrade
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt install python3.12 -y
```

#### Install pip:
```
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.12
```

#### Install paper-qa:
```
python3.12 -m pip install --upgrade setuptools
python3.12 -m pip install paper-qa
```

#### Install ollama and download model:
```
curl -fsSL https://ollama.com/install.sh | sh
ollama pull deepseek-r1:32b
ollama pull mxbai-embed-large
```

- Check Ollama server with command:
```
sudo systemctl start ollama
```

- If Ollama don't start, run commands:
```
sudo systemctl daemon-reload
sudo systemctl enable ollama
sudo systemctl start ollama
```

## Run demo:
- Go to `src` folder:
```
cd src
```
- Run file `ollama.py`:
```
python ollama.py
```
