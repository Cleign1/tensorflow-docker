# Dockerfile for Docker

1. compile
`bash
docker build -t tensorflow-gpu .
`

2. run 
`bash
docker run -it --gpus all tensorflow-gpu
`


**Bonus Command**

`bash
docker start {docker container name}`

`bash
docker attach {docker container name}`
