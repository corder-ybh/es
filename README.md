# es

> vue test project

## Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
npm run build

# build for production and view the bundle analyzer report
npm run build --report
```

For a detailed explanation on how things work, check out the [guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).

1.第一步，安装 vue-cli
``npm install -g vue-cli``
以下选项选择no，其余为yes
  ```
     Use ESLint to lint your code: no
     Set up unit tests: no
     Setup e2e tests with Nightwatch: no
  ```
2.安装element-ui
```npm i element-ui -S```

3.引入:
在main.js中添加引入
```js
import ElementUi from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';

Vue.use(ElementUi);
```