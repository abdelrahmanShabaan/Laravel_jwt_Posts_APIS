require('./bootstrap');
import Vue from 'vue';
import Vuex from 'vuex'
import storeData from './store';
import MainApp from "./components/MainApp";
import router from './routes'


import VueRouter from 'vue-router'

Vue.use(Vuex);
// Vue.use(VueRouter);



const store = new Vuex.Store(storeData)


const app = new Vue({
    el: '#app',
    router: router,
    store,
    components: {
        MainApp
    }
});


