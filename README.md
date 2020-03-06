# nx-watermark
> Watermark use mini_magick.

## installation
```rb
# from gem
gem 'nx-watermark'
# from git
gem 'nx-watermark', git: 'git@github.com:afeiship/nx-watermark.git'
```

## usage
```rb
Nx::Watermark.patch(
  source: "https://img9.doubanio.com/view/ark_article_cover/retina/public/12051836.jpg?v=0",
  watermark: "__tests__/watermark_20.png",
  dest: "__tests__/dist.png",
)
```

## build/publish
```shell
# build
gem build nx-watermark.gemspec

# publish
gem push nx-watermark-0.1.0.gem
```
