<template>
  <div>
    <p>{{ msg }}</p>
    <button @click="emitEvent">親へ</button>
  </div>
</template>

<script>
export default {
  props: { msg: String },
  methods: {
    emitEvent () {
      // 第一引数にeventの名前. ケバブケースで記述
      // 第二引数以降は親側methods等の引数
      this.$emit('child-event', '親に渡す')
    }
  }
}
</script>