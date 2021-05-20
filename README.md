# Earthcube-Meeting-2021
Repository to host notebook/support materials needed for Earthcube 2021 Meeting

# Notebook
The notebook, and its associated data is located in the `notebook` dir

# Docker instructions
To get the docker image associated with this notebook, please enter the following command into docker
```bash
docker pull ghcr.io/amgeo-collaboration/earthcube-2021:latest
```

To run the docker image:
```bash
docker run -dp 8888:8888 earthcube-2021:latest
```

Then, navigate to `localhost:8888` in your favorite browser, and enter `test` for the notebook password

