<template>
  <div id="app">
    <vue-sample hoge="hoge"/>
    <Parent/>
  </div>
</template>

<script>
import VueSample from './components/VueSample.vue'
import Parent from './components/Parent.vue'

export default {
  name: 'app',
  components: {
    VueSample,
    Parent
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
