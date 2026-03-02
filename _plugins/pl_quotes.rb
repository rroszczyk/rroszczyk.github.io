module Jekyll
  module PolishQuotesSafe
    def polish_quotes_safe(input)
      return input unless input.is_a?(String)

      parts = input.split(/(<[^>]+>)/)   # pomijaj tagi HTML

      parts.map! do |part|
        if part.match?(/^<[^>]+>$/)
          part
        else
          # 1) Zamień angielskie cudzysłowy na neutralne "
          part = part.tr("“”", '""')

          # 2) Zamień pary "tekst" -> „tekst”
          part = part.gsub(/"([^"]+)"/, '„\1”')

          part
        end
      end

      parts.join
    end
  end
end

Liquid::Template.register_filter(Jekyll::PolishQuotesSafe)