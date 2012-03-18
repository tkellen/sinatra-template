module Template
  module Helpers

    ##
    #
    # Render a partial template using slim
    #
    # @param [String] template
    #   Path to template.
    # @param [Hash] args
    #   Hash of options for generating a template.
    # @return [String]
    #   Parsed template html.
    #
    def partial(template, *args)
      template_array = template.to_s.split('/')
      template = template_array[0..-2].join('/') + "/_#{template_array[-1]}"
      options = args.last.is_a?(Hash) ? args.pop : {}
      options.merge!(:layout => false)
      locals = options[:locals] || {}
      if collection = options.delete(:collection) then
        collection.inject([]) do |buffer, member|
          buffer << slim(:"#{template}", options.merge(:layout =>
          false, :locals => { :item => member }.merge(locals)))
        end.join("\n")
      else
        slim(:"#{template}", options)
      end
    end

    ##
    #
    # Generate a cache-busted URL for assets.
    #
    # @param [String] url
    #   URL to asset.
    # @return [String]
    #   URL to asset with cachebusting string added.
    #
    def asset_path(url)
      "/assets/cb#{settings.cachebust}/#{url}"
    end

  end
end