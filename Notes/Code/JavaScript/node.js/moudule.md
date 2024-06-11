# Require and Import
+ 官网下载node.js
+ 打开node.js command prompt
+ install npm using `npm install -g npm`
+ vsc中安装javascript degugger node.js extentsion
+ 以管理员模式开启vsc
+ 开启后端http-server服务，需要管理员权限打开powershell
Set-ExecutionPolicy RemoteSigned //脚本的许可权限，永久允许
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass //临时














![alt text](../image/image-1.png)
## require
require method is built in js, is  CommonJS module system.
```javascript
// utils.js
const getFullName = (firstname, lastName) => {
    return `My fullname is ${firstname} ${lastName}`;
};
module.exports = getFullName
```
```javascript
// index.js
const getFullName = require('./utils.js');
console.log(getFullName('John', 'Doe')); // My fullname is John Doe
```

## import
import method is introduced in Node.js v8.5.0, which is the ES module system.
如果你想使用import来导入某个模块，该模块需要存储在.mjs结尾的file中；如果使用.js结尾，需要在package.json file 中add `"type": "module"`.
不只需要在工程文件夹index.js里包含所有模块的package.json`/var/www/mapgis/src/package.json`中增加，还要在某一个单模块的package.json中增加，如shpjs模块似乎只支持import.
`/var/www/mapgis/src/node_modules/shpjs/package.json`

```javascript
// utils.mjs
export const getFullName = (firstname, lastName) => {
    return `my fullname is ${firstname} ${lastName}`;
};

// index.js
import { getFullName } from './utils.mjs';
console.log(getFullName('John', 'Doe')); // My fullname is John Doe
```
## attention
you can't use import and require meanwhile in one scripts unless you enable the esModuleInterop option in your TypeScript ==configuration== or if you are using Babel to transpile your code.
