<template>
  <div>
    <child :msg="msg" @child-event="log"/>
  </div>
</template>

<script>
import Child from "./Child.vue"
export default {
  data () {
    return {
      msg: "childに渡す"
    }
  },
  components: {
    Child
  },
  methods: {
    log (value) { console.log(value) }
  }
}
</script>