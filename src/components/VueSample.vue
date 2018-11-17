<template>
  <!-- ここにhtmlを記述。templateタグの下はタグ１つだけ -->
  <div>
    <h1>VueSample</h1>

    <!-- @blur  = [イベントハンドリング](https://jp.vuejs.org/v2/guide/events.html) -->
    <!-- v-mode = [フォーム入力バインディング](https://jp.vuejs.org/v2/guide/forms.html) -->
    <input v-model="value" @blur="log()">  

    <!-- {{ }}  = データバインディングの[テンプレート構文](https://jp.vuejs.org/v2/guide/syntax.html)-->
    <p>{{ example }}</p>
    <p>{{ hoge }}</p>

    <!-- HogeFugaコンポーネントを利用する場合 -->
    <!-- <hoge-fuga/>  のようにキャメルケースからケバブケースにする必要がある -->
  </div>
</template>


<script>
export default {
  components: {           // 子コンポーネントを利用する場合 子をimport後、ここに記述
    // HogeFuga                 // <script>の下あたりで、 import HogeFuga from './HogeFuga.vue'等
  },
  props: {                // 親コンポーネントから渡してもらう変数を記述する場所
    hoge: String              // 型指定なしで hoge とかでも可能. その場合 {} ではなく []
  },
  data () {               // コンポーネント内変数を記述する場所。return内に書く
    return {
      value: "string"    
    }
  },
  created: function () {  // [ライフサイクルダイアグラム](https://jp.vuejs.org/v2/guide/instance.html#インスタンスライフサイクルフック)
  },
  computed: {             // [算出プロパティ](https://jp.vuejs.org/v2/guide/computed.html)
    example () {
      return this.value.split('').reverse()
    }
  },
  methods: {
    log () {
      console.log(this.value)
    }
  }
}
</script>


<!-- cssの記述. scopedでその.vueの中でだけ有効に -->
<style scoped>
h1 {
  margin: 40px;
}
</style>
