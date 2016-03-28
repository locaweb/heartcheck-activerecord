module Heartcheck
  module Checks
    # Check for a activerecord connection
    # Base is set in heartcheck gem
    class Activerecord < Base
      # validate service connection
      #
      # @retun [void]
      def validate
        services.each do |service|
          begin
            connection = service[:connection]
            connection.execute('select 1')
          rescue
            append_error(service)
          ensure
            connection.close
          end
        end
      end

      private

      # customize the error message
      # It's called in Heartcheck::Checks::Base#append_error
      #
      # @param [Hash] service
      # @option opts [String] :name The connection identifier
      #
      # @return [void]
      def custom_error(service)
        @errors << "Error to use the \"#{service[:name]}\" connection"
      end
    end
  end
end
