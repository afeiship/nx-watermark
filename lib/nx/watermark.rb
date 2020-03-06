module Nx
  class Watermark
    def self.patch(in_options)
      source_image = MiniMagick::Image.open(in_options[:source])
      water_image = MiniMagick::Image.new(in_options[:watermark])
      result = source_image.composite(water_image) do |config|
        config.gravity "center"
        config.compose "Over"
        if block_given?
          yield config
        end
      end

      result.write in_options[:dest]
    end
  end
end
