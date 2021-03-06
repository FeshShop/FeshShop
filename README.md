# FeshShop

**How to clone all needed repositories.**
----------------
Clone the main repository. Moreover, in the `scripts` directory, you will find the [git-clone-all.sh](https://github.com/FeshShop/FeshShop/blob/main/scripts/git-clone-all.sh) and just execute it.

**Needed repositories soo far**
----------------
- [FeshShop](https://github.com/FeshShop/FeshShop)
- [FeshShop Identity](https://github.com/FeshShop/FeshShop.Identity)
- [FeshShop Products](https://github.com/FeshShop/FeshShop.Products)
- [FeshShop Discounts](https://github.com/FeshShop/FeshShop.Discounts)
- [FeshShop ApiGateway](https://github.com/FeshShop/FeshShop.ApiGateway)
- [FeshShop Common](https://github.com/FeshShop/FeshShop.Common)

**How to start the solution?**
----------------
Database layer:
- [MongoDB](https://www.mongodb.com)

You can run mongo database it with single docker command
```docker
docker run --name mongo -d -p 27017:27017 mongo:4
```

Or using infrastructure docker compose (`infrastructure-compose.yml`)
```docker
docker-compose -p MY_PROJECT_NAME  -f infrastructure-compose.yml up -d
```

Or you can run the whole application with command (`docker-compose.yml`):
```
docker-compose -p MY_PROJECT_NAME  -f docker-compose.yml up -d
```
