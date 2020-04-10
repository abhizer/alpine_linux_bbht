# alpine_linux_bbht
Bug Bounty Hunting Tools set up in Alpine Linux!

I was working with an Ubuntu docker but then decided to switch to Alpine because its light weight and minimal. And, just wanted to share this with you guys!

For this, you will need to Download and Install Docker Desktop. 
https://www.docker.com/products/docker-desktop

Once you are done with that:

Pull the image:
`docker pull alpine`

Run it:
`docker run -it alpine`

Nice, once you know that it works, exit the shell.

List all docker containers:
`docker container ls -a`

Note the first 3 letters of your container id and then run the following command:
`docker container start <id> && docker container attach <id>`

You should be inside the shell now. 

Clone this repo and then:

`chmod +x install.sh`

`./install.sh`

You should be good to go!

Feel free to leave a feedback and expand on this!
