module DoubleRender

  class NoLayoutRenderer < Jekyll::Renderer
    def place_in_layouts(content, payload, info)
      content
    end
  end

  Jekyll::Hooks.register :site, :pre_render do |site, payload|
    site.collections.each_value do |collection|
      collection.docs.each do |document|
        doc_clone = document.clone
        document.output = NoLayoutRenderer.new(site, doc_clone, payload).run
      end
    end
  end

end
