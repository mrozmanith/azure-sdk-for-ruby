# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Represents information needed for cloning operation
    #
    class CloningInfo

      include MsRestAzure

      # @return [String] Correlation Id of cloning operation. This id ties
      # multiple cloning operations
      # together to use the same snapshot
      attr_accessor :correlation_id

      # @return [Boolean] Overwrite destination web app
      attr_accessor :overwrite

      # @return [Boolean] If true, clone custom hostnames from source web app
      attr_accessor :clone_custom_host_names

      # @return [Boolean] Clone source control from source web app
      attr_accessor :clone_source_control

      # @return [String] ARM resource id of the source web app. Web app
      # resource id is of the form
      # /subscriptions/{subId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName}
      # for production slots and
      # /subscriptions/{subId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName}/slots/{slotName}
      # for other slots
      attr_accessor :source_web_app_id

      # @return [String] Hosting environment
      attr_accessor :hosting_environment

      # @return [Hash{String => String}] Application settings overrides for
      # cloned web app. If specified these settings will override the
      # settings cloned
      # from source web app. If not specified, application
      # settings from source web app are retained.
      attr_accessor :app_settings_overrides

      # @return [Boolean] If specified configure load balancing for source and
      # clone site
      attr_accessor :configure_load_balancing

      # @return [String] ARM resource id of the traffic manager profile to use
      # if it exists. Traffic manager resource id is of the form
      # /subscriptions/{subId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{profileName}
      attr_accessor :traffic_manager_profile_id

      # @return [String] Name of traffic manager profile to create. This is
      # only needed if traffic manager profile does not already exist
      attr_accessor :traffic_manager_profile_name


      #
      # Mapper for CloningInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CloningInfo',
          type: {
            name: 'Composite',
            class_name: 'CloningInfo',
            model_properties: {
              correlation_id: {
                required: false,
                serialized_name: 'correlationId',
                type: {
                  name: 'String'
                }
              },
              overwrite: {
                required: false,
                serialized_name: 'overwrite',
                type: {
                  name: 'Boolean'
                }
              },
              clone_custom_host_names: {
                required: false,
                serialized_name: 'cloneCustomHostNames',
                type: {
                  name: 'Boolean'
                }
              },
              clone_source_control: {
                required: false,
                serialized_name: 'cloneSourceControl',
                type: {
                  name: 'Boolean'
                }
              },
              source_web_app_id: {
                required: false,
                serialized_name: 'sourceWebAppId',
                type: {
                  name: 'String'
                }
              },
              hosting_environment: {
                required: false,
                serialized_name: 'hostingEnvironment',
                type: {
                  name: 'String'
                }
              },
              app_settings_overrides: {
                required: false,
                serialized_name: 'appSettingsOverrides',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              configure_load_balancing: {
                required: false,
                serialized_name: 'configureLoadBalancing',
                type: {
                  name: 'Boolean'
                }
              },
              traffic_manager_profile_id: {
                required: false,
                serialized_name: 'trafficManagerProfileId',
                type: {
                  name: 'String'
                }
              },
              traffic_manager_profile_name: {
                required: false,
                serialized_name: 'trafficManagerProfileName',
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
