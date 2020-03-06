require_relative "../lib/nx-watermark"

Nx::Watermark.patch(
  source: "https://img9.doubanio.com/view/ark_article_cover/retina/public/12051836.jpg?v=0",
  watermark: "__tests__/watermark_20.png",
  dest: "__tests__/dist.png",
)
