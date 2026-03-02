module Jekyll
  module PolishTypography
    # zamienia: " a " -> " a&nbsp;"
    def polish_nbsp(input)
      return input unless input.is_a?(String)

      # pojedyncze litery PL + wielkie litery
      input.gsub(/(?<=\s|^)([aiouwzAIUOWZ])\s+/, '\\1&nbsp;')
    end
  end
end

Liquid::Template.register_filter(Jekyll::PolishTypography)