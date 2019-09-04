# frozen_string_literal: true

module Faker
  class TvShows
    class SiliconValley < Base
      flexible :silicon_valley

      class << self
        def character
          fetch('silicon_valley.characters')
        end

        def company
          fetch('silicon_valley.companies')
        end

        def quote
          fetch('silicon_valley.quotes')
        end

        def app
          fetch('silicon_valley.apps')
        end

        def invention
          fetch('silicon_valley.inventions')
        end

        def motto
          fetch('silicon_valley.mottos')
        end

        def url
          fetch('silicon_valley.urls')
        end

        def email
          fetch('silicon_valley.email')
        end
      end
    end
  end
end
