          <<~RUBY
            #{visibility} def #{method_name}
              return @_memoized_#{method_name} if defined?(@_memoized_#{method_name})
              @_memoized_#{method_name} = super
            end
          RUBY
