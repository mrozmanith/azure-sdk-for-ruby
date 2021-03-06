# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Used to target devices based on the device manufacturer.
    #
    class DeviceManufacturerCriterion < Criterion

      include MsRestAzure


      def initialize
        @type = "device-manufacturer"
      end

      attr_accessor :type

      # @return [String] The device manufacturer.
      attr_accessor :name


      #
      # Mapper for DeviceManufacturerCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'device-manufacturer',
          type: {
            name: 'Composite',
            class_name: 'DeviceManufacturerCriterion',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
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
