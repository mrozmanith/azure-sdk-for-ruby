# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Class containing names for connection strings and application settings
    # to be marked as sticky to the slot
    # and not moved during swap operation
    # This is valid for all deployment slots under the site
    #
    class SlotConfigNames

      include MsRestAzure

      # @return [Array<String>] List of connection string names
      attr_accessor :connection_string_names

      # @return [Array<String>] List of application settings names
      attr_accessor :app_setting_names


      #
      # Mapper for SlotConfigNames class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SlotConfigNames',
          type: {
            name: 'Composite',
            class_name: 'SlotConfigNames',
            model_properties: {
              connection_string_names: {
                required: false,
                serialized_name: 'connectionStringNames',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              app_setting_names: {
                required: false,
                serialized_name: 'appSettingNames',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
