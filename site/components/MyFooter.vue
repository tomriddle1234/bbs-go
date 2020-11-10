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
          Copyright ©2017-2020 版权所有 桂ICP备 号
          <a
            target="_blank"
            href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode="
            style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"
            ><img
              src="//s.bulejie.com/images/gabaicon.png"
              style="float:left;"
            />
            桂公网安备 号
          </a>
          Powered by
          <a href="http://vfxware.com" target="_blank" class="light">VFXWARE</a>
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
