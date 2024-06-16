# https://map.9990116.xyz/api/site_info

# 目录配置
/var/www/mapgis
+ public
  + index.html
+ src
  + index.js
  + package.json
+ data
index.html

#  install nginx
`sudo apt update`
`sudo apt install nginx`

# 启动nginx 
```bash
sudo systemctl start nginx
sudo systemctl status nginx
开机自启,sudo systemctl enable nginx
# 修改配置后，重新启动nginx
sudo systemctl reload nginx

```
# nginx 配置
```bash
server {
 #   listen 443 ssl;
    listen 80;
    listen 443 ssl http2;
    server_name map.9990116.xyz;
    index index.html index.htm default.htm default.html;
    server_name map.9990116.xyz;
    root  /var/www/mapgis;
    ssl_certificate    /www/server/panel/vhost/cert/mapgis/fullchain.pem;
    ssl_certificate_key    /www/server/panel/vhost/cert/mapgis/privkey.pem;
    ssl_protocols TLSv1.1 TLSv1.2 TLSv1.3;
    ssl_ciphers EECDH+CHACHA20:EECDH+CHACHA20-draft:EECDH+AES128:RSA+AES128:EECDH+AES256:RSA+AES256:EECDH+3DES:RSA+3DES:!MD5;
    ssl_prefer_server_ciphers on;
    ssl_session_cache shared:SSL:10m;
    ssl_session_timeout 10m;
    add_header Strict-Transport-Security "max-age=31536000";
    error_page 497  https://$host$request_uri;

    #Files or directories forbidden to access
    location ~ ^/(\.user.ini|\.htaccess|\.git|\.svn|\.project|LICENSE|README.md|package.json|package-lock.json|\.env|node_modules) {
        return 404;
    }
    location / {
        proxy_pass http://localhost:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}


```
# 启动后端
命令行输入位置是在后端目录
```bash
# install the package in package.json
npm install
node index.js
```
# 浏览器访问
https://map.9990116.xyz/api/site_info
