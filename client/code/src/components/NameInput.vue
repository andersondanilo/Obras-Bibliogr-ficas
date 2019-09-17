<template>
  <div class="row row-name">
    <div class="col-3">
    </div>
    <div class="col-3">
      <input type="text" v-model="originalName" class="form-control" />
    </div>
    <div class="col-3">
      <input type="text" v-model="bookName" readonly class="form-control" />
    </div>
  </div>
</template>

<script>
const debounce = require('debounce');
const axios = require('axios');

export default {
  name: 'NameInput',
  data() {
    return {
      originalName: '',
      bookName: ''
    }
  },
  watch: {
    originalName: function (val) {
      this.refreshBookName()
    }
  },
  methods: {
    refreshBookName: debounce(function () {
      var self = this
      axios.get('http://localhost:3000/convert-to-author-name?name='+this.originalName)
        .then(function (response) {
          self.bookName = response.data.author_name
        })
    }, 500)
  }
}
</script>

<style>
.row.row-name {
  margin-bottom: 0.5em;
}
</style>
