# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Commerce
  module Models
    #
    # Model object.
    #
    class MonetaryCredit < OfferTermInfo

      include MsRestAzure


      def initialize
        @Name = "Monetary Credit"
      end

      attr_accessor :Name

      # @return The amount of credit provided under the terms of the given
      # offer level. This field is used only by offer terms of type
      # 'MonetaryCredit'.
      attr_accessor :credit


      #
      # Mapper for MonetaryCredit class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Monetary Credit',
          type: {
            name: 'Composite',
            class_name: 'MonetaryCredit',
            model_properties: {
              effective_date: {
                required: false,
                serialized_name: 'EffectiveDate',
                type: {
                  name: 'DateTime'
                }
              },
              excluded_meter_ids: {
                required: false,
                serialized_name: 'ExcludedMeterIds',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'UuidElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              Name: {
                required: true,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              credit: {
                required: false,
                serialized_name: 'Credit',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
