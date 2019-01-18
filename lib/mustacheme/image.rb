module Mustacheme
  class Image
    MIME_TYPES = %w(
      image/jpeg
      image/png
      image/gif
    ).freeze

    def initialize(path)
      @path = path
    end

    def valid?
      MIME_TYPES.include? image.mime_type
    end

    def process
      return unless valid?

      if gif?
        process_gif
      else
        process_static
      end
    end

    private

    attr_reader :path

    def process_static
      puts "static image processing not yet available"
    end

    def process_gif?
      puts "gif processing not yet available"
    end

    def gif?
      image.mime_type == "image/gif"
    end

    def image
      @_image ||= MiniMagick::Image.open(path)
    end
  end
end
