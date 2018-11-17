<template>
  <div id="app">
    <vue-sample hoge="hoge"/>
  </div>
</template>

<script>
import VueSample from './components/VueSample.vue'

export default {
  name: 'app',
  components: {
    VueSample
  }
}
</script>

<style lang="scss">
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
