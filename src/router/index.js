import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Login from '@/pages/Login'

Vue.use(Router);
function route (path, file, name, children) {
  return {
    exact: true,
    path,
    name,
    children,
    component: () => import('../pages' + file)
  }
}
export default new Router({
  routes: [

    route("/login",'/Login',"Login"),
    route('/index', '/Layout', 'index'),
  ]
})
