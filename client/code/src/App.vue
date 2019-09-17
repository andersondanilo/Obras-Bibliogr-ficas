<template>
  <div id="app">
    Quantidade de nomes:&nbsp;
    <input type="text" class="form-control quantity-input" v-model="nameQuantity" />
    <div class="row">
      <div class="col-3">
      </div>
      <div class="col-3">
        Nome Original
      </div>
      <div class="col-3">
        Autor
      </div>
    </div>
    <div v-for="i in nameList">
      <NameInput />
    </div>
  </div>
</template>

<script>
import NameInput from './components/NameInput'

export default {
  name: 'app',
  data() {
    return {
      nameQuantity: 1
    }
  },
  computed: {
    nameList () {
      var nameQuantity = parseInt(this.nameQuantity)
      var list = []

      for (var i = 0; i < nameQuantity; i++) {
        list.push(i)
      }

      return list
    }
  },
  components: {
    NameInput
  },
  created () {
    document.title = 'Obras Bibliográficas'
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

.form-control.quantity-input {
  width: 50px;
  display: inline-block;
}
</style>
