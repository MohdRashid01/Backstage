# [Backstage](https://backstage.io)

This is your newly scaffolded Backstage App, Good Luck!

To start the app, run:

```sh
yarn install
yarn dev
```

If you get this Error 
```
the --mount option requires BuildKit. Refer to https://docs.docker.com/go/buildkit/ to learn how to build images with BuildKit enabled
```
Solution
1. DOCKER_BUILDKIT=1
2. sudo nano /etc/docker/daemon.json
```
{
  "features": {
    "buildkit": true
  }
}
```
3. sudo systemctl docker status
4. sudo systemctl restart docker
