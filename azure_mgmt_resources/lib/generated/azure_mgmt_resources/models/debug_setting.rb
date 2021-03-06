# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources
  module Models
    #
    # Model object.
    #
    class DebugSetting

      include MsRestAzure

      # @return [String] The debug detail level.
      attr_accessor :detail_level


      #
      # Mapper for DebugSetting class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DebugSetting',
          type: {
            name: 'Composite',
            class_name: 'DebugSetting',
            model_properties: {
              detail_level: {
                required: false,
                serialized_name: 'detailLevel',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
