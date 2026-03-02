module Jekyll
  class Mermaid < Liquid::Block

    def initialize(tag_name, markup, tokens)
      super
    end

    def render(context)
      @config = context.registers[:site].config['mermaid']
      "<div class=\"mermaid\">#{super}</div>"
    end
  end
end

Liquid::Template.register_tag('mermaid', Jekyll::Mermaid)

Jekyll::Hooks.register [:pages, :posts, :documents], :pre_render do |doc|
  content = doc.content
  next unless content && content.include?("```") && content.include?("mermaid")

  doc.content = content.gsub(/``` ?mermaid\s*\n(.*?)\n```/m) do
    "<div class=\"mermaid\">#{$1}</div>"
  end
end
