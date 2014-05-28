require 'java'
require 'norikra/udf'

module Norikra
  module UDF
    class Raw < Norikra::UDF::SingleRow
      def self.init
        require 'norikra-udf-my.jar'
      end

      def definition
        ["raw", "in.ixixi.norikra.udf.MyUDF", "raw"]
      end

    end
    class UTF8Conv < Norikra::UDF::SingleRow
      def self.init
        require 'norikra-udf-my.jar'
      end
      def definition
        ["utf8", "in.ixixi.norikra.udf.MyUDF", "convertLatin1ToUTF8"]
      end
    end
  end
end
