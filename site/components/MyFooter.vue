<template>
  <div>
    <footer class="footer">
      <div class="container content">
        <div>
          <a href="/about">关于</a>
          <a href="/tags">标签</a>
          <a href="/links">友链</a>
        </div>
        <div>
          Copyright ©2017-2020 版权所有 桂ICP备17000524号 Powered by
          <a href="http://vfxware.com" target="_blank" class="light"
            >VFXWARE</a
          >
        </div>
      </div>
    </footer>
  </div>
</template>

<script>
export default {}
</script>

<style lang="scss" scoped>
.footer {
  font-size: 14px;
  color: #666;
  background: none;
  text-align: left;
  margin: 0px 10px;
  a {
    color: #666;
    text-decoration: none;
  }

  .light {
    color: #eb5424;
    font-weight: bold;
  }
}
</style>
