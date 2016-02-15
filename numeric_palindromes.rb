module NumericPalindromes


  LOW_VALUES = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 22, 33, 44, 55, 66, 77, 88, 99]

  LEADING_VALUES = [1,2,3,4,5,6,7,8,9]
  FILLING_VALUES = [0,1,2,3,4,5,6,7,8,9]

  def self.upto(max_inclusive)

    Enumerator.new(max_inclusive) do |y|
      LOW_VALUES.each do |value|
        break if value > max_inclusive
        y.yield value
      end

      value = nil

      # three digits
      LEADING_VALUES.each do |leading|
        FILLING_VALUES.each do |filler|
          value = "#{leading}#{filler}#{leading}".to_i
          break if value > max_inclusive
          y.yield value
        end
        break if value > max_inclusive
      end

      # four digits
      LEADING_VALUES.each do |leading|
        FILLING_VALUES.each do |filler|
          value = "#{leading}#{filler}#{filler}#{leading}".to_i
          break if value > max_inclusive
          y.yield value
        end
        break if value > max_inclusive
      end

      # five digits
      LEADING_VALUES.each do |leading|
        FILLING_VALUES.each do |filler|
          FILLING_VALUES.each do |filler1|
            value = "#{leading}#{filler}#{filler1}#{filler}#{leading}".to_i
            break if value > max_inclusive
            y.yield value
          end
          break if value > max_inclusive
        end
        break if value > max_inclusive
      end

      # six digits
      LEADING_VALUES.each do |leading|
        FILLING_VALUES.each do |filler|
          FILLING_VALUES.each do |filler1|
            value = "#{leading}#{filler}#{filler1}#{filler1}#{filler}#{leading}".to_i
            break if value > max_inclusive
            y.yield value
          end
          break if value > max_inclusive
        end
        break if value > max_inclusive
      end

      # seven digits
      LEADING_VALUES.each do |leading|
        FILLING_VALUES.each do |filler|
          FILLING_VALUES.each do |filler1|
            FILLING_VALUES.each do |filler2|
              value = "#{leading}#{filler}#{filler1}#{filler2}#{filler1}#{filler}#{leading}".to_i
              break if value > max_inclusive
              y.yield value
            end
            break if value > max_inclusive
          end
          break if value > max_inclusive
        end
        break if value > max_inclusive
      end

      # eight digits
      LEADING_VALUES.each do |leading|
        FILLING_VALUES.each do |filler|
          FILLING_VALUES.each do |filler1|
            FILLING_VALUES.each do |filler2|
              value = "#{leading}#{filler}#{filler1}#{filler2}#{filler2}#{filler1}#{filler}#{leading}".to_i
              break if value > max_inclusive
              y.yield value
            end
            break if value > max_inclusive
          end
          break if value > max_inclusive
        end
        break if value > max_inclusive
      end

      # nine digits
      LEADING_VALUES.each do |leading|
        FILLING_VALUES.each do |filler|
          FILLING_VALUES.each do |filler1|
            FILLING_VALUES.each do |filler2|
              FILLING_VALUES.each do |filler3|
                value = "#{leading}#{filler}#{filler1}#{filler2}#{filler3}#{filler2}#{filler1}#{filler}#{leading}".to_i
                break if value > max_inclusive
                y.yield value
              end
              break if value > max_inclusive
            end
            break if value > max_inclusive
          end
          break if value > max_inclusive
        end
        break if value > max_inclusive
      end
    end
  end
end
