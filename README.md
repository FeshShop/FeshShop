# FeshShop

**How to clone all needed repositories.**
----------------
Clone the main repository. Moreover, in the `scripts` directory, you will find the [git-clone-all.sh](https://github.com/FeshShop/FeshShop/blob/main/scripts/git-clone-all.sh) and just execute it.

**Needed repositories soo far**
----------------
- [FeshShop](https://github.com/FeshShop/FeshShop)
- [FeshShop Identity](https://github.com/FeshShop/FeshShop.Identity)
- [FeshShop Products](https://github.com/FeshShop/FeshShop.Products)
- [FeshShop Common](https://github.com/FeshShop/FeshShop.Common)

**How to start the solution?**
----------------
Database layer:
- [MongoDB](https://www.mongodb.com)

You can run it with single docker command
```docker
docker run --name mongo -d -p 27017:27017 mongo:4
```

Or using infrastructure docker compose (`infrastructure-compose.yml`)
```docker
docker-compose -p MY_PROJECT_NAME  -f infrastructure-compose.yml up -d
```
