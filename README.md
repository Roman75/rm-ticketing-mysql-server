"# rm-ticketing-mysql-server" 

basic implementation was done at https://github.com/Roman75/ticketing

here we begin to split each part into separate project to run each in separate docker container (microservice concept will be implemented)

```bash
cd rm-ticketing-mysql-server
docker build --force-rm --no-cache -t rm-ticketing-mysql-server .
docker run --name=rm-ticketing-mysql-server -p 3306:3306 -e MYSQL_ROOT_PASSWORD=Passw0Rd! -d -v rm_ticketing_mysql_volume:/var/lib/mysql rm-ticketing-mysql-server
cd ..
```
