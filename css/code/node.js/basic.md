>learning resource
>[book](https://book.mixu.net/node/index.html)
>[official](https://nodejs.org/en/learn/asynchronous-work/javascript-asynchronous-programming-and-callbacks)

## 同步-block methods

Actually, with one processor, all the code is synchronous. Doing things one by one.C, Java, C#, PHP, Go, Ruby, Swift, and Python are all synchronous by default. Some of them handle async operations by using threads, spawning a new process.

```javascript
const fs = require('node:fs');
const data = fs.readFileSync('/file.md'); // blocks here until file is read
console.log(data);
moreWork(); // will run after console.log
```
## asynchronous-no block methods
JavaScript execution in Node.js is ==single thread==.so concurrency refers to the event loop's capacity to execute JavaScript callback functions after completing other work.

>IO operations: Read or write file; query data from database;network request.
>All of the I/O methods in the Node.js standard library provide ==asynchronous== versions, which are ==non-blocking==, and accept callback function. When executing the IO operations, the node.js can deal with others code, don't need to wait the IO operations finish.

>JavaScript is single-threaded, this "multiple things" doesn't mean executing multiple blocks of JavaScript code simultaneously but rather handling multiple operations by starting them and then running their callbacks when they finish, all while the main JavaScript thread can continue executing other code or stay idle waiting for callbacks.
> 回调函数是在启动异步操作时传入的一个函数，这个函数将在异步操作完成后被调用；异步代码的结果通过回调函数调用，当主进程是空闲的时候。
> 

```javascript
// this asy function accept two params, one is sql, one is callback function.
// callback function accept two params ,one is error object,one is results. you can enter more processes to results
database.query("SELECT * FROM users", function(error, results) {
    if (error) {
        console.error('数据库查询错误', error);
    } else {
        console.log('数据库查询结果', results);
        // 这里可以添加更多对results的处理代码
    }
});
```

```javascript
const fs = require('node:fs');
fs.readFile('/file.md', (err, data) => {
  if (err) throw err;
  console.log(data);
});
moreWork(); // will run before console.log
```
## Callback function
A callback is a simple function that's passed as a value[param]to another function, and will only be executed when the event happens.
```javascript
const fs = require('node:fs');
// 用=>来向回调函数传递参数.This.
fs.readFile('/file.json', (err, data) => {
  if (err) {
    // handle error
    console.log(err);
    return;
  }

  // no errors, process data
  console.log(data);
});

```



















