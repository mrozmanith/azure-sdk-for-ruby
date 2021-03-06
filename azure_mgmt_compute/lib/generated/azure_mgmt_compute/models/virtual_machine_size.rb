# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes the properties of a VM size.
    #
    class VirtualMachineSize

      include MsRestAzure

      # @return [String] the VM size name.
      attr_accessor :name

      # @return [Integer] the Number of cores supported by a VM size.
      attr_accessor :number_of_cores

      # @return [Integer] the OS disk size allowed by a VM size.
      attr_accessor :os_disk_size_in_mb

      # @return [Integer] the Resource disk size allowed by a VM size.
      attr_accessor :resource_disk_size_in_mb

      # @return [Integer] the Memory size supported by a VM size.
      attr_accessor :memory_in_mb

      # @return [Integer] the Maximum number of data disks allowed by a VM
      # size.
      attr_accessor :max_data_disk_count


      #
      # Mapper for VirtualMachineSize class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineSize',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineSize',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              number_of_cores: {
                required: false,
                serialized_name: 'numberOfCores',
                type: {
                  name: 'Number'
                }
              },
              os_disk_size_in_mb: {
                required: false,
                serialized_name: 'osDiskSizeInMB',
                type: {
                  name: 'Number'
                }
              },
              resource_disk_size_in_mb: {
                required: false,
                serialized_name: 'resourceDiskSizeInMB',
                type: {
                  name: 'Number'
                }
              },
              memory_in_mb: {
                required: false,
                serialized_name: 'memoryInMB',
                type: {
                  name: 'Number'
                }
              },
              max_data_disk_count: {
                required: false,
                serialized_name: 'maxDataDiskCount',
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
