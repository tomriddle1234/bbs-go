<template>
  <section class="main">
    <div class="container">
      <div class="widget">
        <div class="widget-header">
          关于
        </div>
        <div class="widget-content content">
          <h2>简介</h2>
          <p>
            VIOC社区是一个配合Vispoc.com和Vimooc.org在线课程网站教学的讨论区，同时也是一个欢迎各方面朋友的关于数字艺术和技术的社区。希望用户踊跃发言，遵守社区规范。
          </p>

          <p>
            为方便大家学习和交流我们在2020年8月使用&nbsp;BBS-GO&nbsp;搭建了&nbsp;<a
              href="https://bbs.vispoc.com"
              target="_blank"
              >VIOC社区</a
            >，欢迎大家前往交流。
          </p>

          <h2>与我联系</h2>
          <p>
            如有任何想法、意见、问题可以在本社区发帖交流。
          </p>
          <h2>社区系统</h2>
          <p>
            感谢<a href="https://github.com/mlogclub/bbs-go" target="_blank"
              >BBS-GO</a
            >
          </p>
          <!-- 展示广告 -->
          <!--          <adsbygoogle ad-slot="1742173616" />-->
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  head() {
    return {
      title: this.$siteTitle('关于'),
    }
  },
}
</script>

<style lang="scss" scoped></style>
