CREATE USER ylsea WITH PASSWORD 'tangqwe';\
enter the PostgreSQL command prompt
```bash
## two steps
#switching to the postgres user
sudo -i -u postgres;
psql;
# one step,directly in linux command prompt
sudo -u postgres psql

```



change the passwd of default user-postgres
```bash
# 从bash shell到postgres
(in user shell) sudo su - postgres
#connect to the postgres database as postgres user
 (in postgres shell) psql postgres postgres
#now you can reset password of postgres user
 (in postgres psql) ALTER USER postgres PASSWORD 'newsecret';
#quit psql
 (in postgres psql) \q
#quit postgres shell
 (in postgres shell) exit
# test connection with new password
 (in user shell) psql -h localhost postgres postgres

```
# 列出所有使用者
SELECT usename FROM pg_user;




# 创建新的用户，并赋予所有者权限
```sql

SELECT rolname AS username,
       CASE 
           WHEN rolsuper THEN 'superuser'
           WHEN rolcreaterole THEN 'createrole'
           WHEN rolcreatedb THEN 'createdb'
           WHEN rolcanlogin THEN 'login'
           ELSE ''
       END AS role_flags
FROM pg_roles;
# 创建新用户
CREATE USER yl WITH PASSWORD 'ylxhyl'；
# 删除用户
DROP USER yl;
# 赋予使用者新的权限必须在具有超级权限用户的登录面板中,psql postgres postgres
ALTER ROLE ylsea WITH SUPERUSER;
# 用新用户身份登录psql
psql postgres ylsea;
# 创建新的数据库
CREATE DATABASE geoweb;
# 插入数据 需要在linux的命令行下插入
shp file
shp2pgsql -I -s 4326 /home/ubuntu/data/districts/district.shp county | psql -U ylsea -d geoweb;

```
从linux命令行登录
```sql
psql -U ylsea -d geoweb

```

创建新用户后，密码登录失败
FATAL:  Peer authentication failed for user "ylsea"

+ 修改pg_hba.conf文件：编辑 PostgreSQL 的 pg_hba.conf 文件，将 local 部分的认证方法从 peer 改为 md5。找到并编辑该文件（通常在 /etc/postgresql/<version>/main/pg_hba.conf 中），将
local   all             all                                     peer
修改为
local   all             all                                     md5
+ 重启
sudo service postgresql reload
