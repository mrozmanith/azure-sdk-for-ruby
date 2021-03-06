# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_compute/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Compute
  autoload :AvailabilitySets,                                   'generated/azure_mgmt_compute/availability_sets.rb'
  autoload :VirtualMachineExtensionImages,                      'generated/azure_mgmt_compute/virtual_machine_extension_images.rb'
  autoload :VirtualMachineExtensions,                           'generated/azure_mgmt_compute/virtual_machine_extensions.rb'
  autoload :VirtualMachineImages,                               'generated/azure_mgmt_compute/virtual_machine_images.rb'
  autoload :UsageOperations,                                    'generated/azure_mgmt_compute/usage_operations.rb'
  autoload :VirtualMachineSizes,                                'generated/azure_mgmt_compute/virtual_machine_sizes.rb'
  autoload :VirtualMachines,                                    'generated/azure_mgmt_compute/virtual_machines.rb'
  autoload :VirtualMachineScaleSets,                            'generated/azure_mgmt_compute/virtual_machine_scale_sets.rb'
  autoload :VirtualMachineScaleSetVMs,                          'generated/azure_mgmt_compute/virtual_machine_scale_set_vms.rb'
  autoload :ContainerServiceOperations,                         'generated/azure_mgmt_compute/container_service_operations.rb'
  autoload :ComputeManagementClient,                            'generated/azure_mgmt_compute/compute_management_client.rb'

  module Models
    autoload :InstanceViewStatus,                                 'generated/azure_mgmt_compute/models/instance_view_status.rb'
    autoload :AvailabilitySetListResult,                          'generated/azure_mgmt_compute/models/availability_set_list_result.rb'
    autoload :VirtualMachineSize,                                 'generated/azure_mgmt_compute/models/virtual_machine_size.rb'
    autoload :VirtualMachineSizeListResult,                       'generated/azure_mgmt_compute/models/virtual_machine_size_list_result.rb'
    autoload :VirtualMachineExtensionInstanceView,                'generated/azure_mgmt_compute/models/virtual_machine_extension_instance_view.rb'
    autoload :PurchasePlan,                                       'generated/azure_mgmt_compute/models/purchase_plan.rb'
    autoload :OSDiskImage,                                        'generated/azure_mgmt_compute/models/osdisk_image.rb'
    autoload :DataDiskImage,                                      'generated/azure_mgmt_compute/models/data_disk_image.rb'
    autoload :UsageName,                                          'generated/azure_mgmt_compute/models/usage_name.rb'
    autoload :Usage,                                              'generated/azure_mgmt_compute/models/usage.rb'
    autoload :ListUsagesResult,                                   'generated/azure_mgmt_compute/models/list_usages_result.rb'
    autoload :VirtualMachineCaptureParameters,                    'generated/azure_mgmt_compute/models/virtual_machine_capture_parameters.rb'
    autoload :Plan,                                               'generated/azure_mgmt_compute/models/plan.rb'
    autoload :HardwareProfile,                                    'generated/azure_mgmt_compute/models/hardware_profile.rb'
    autoload :ImageReference,                                     'generated/azure_mgmt_compute/models/image_reference.rb'
    autoload :KeyVaultSecretReference,                            'generated/azure_mgmt_compute/models/key_vault_secret_reference.rb'
    autoload :KeyVaultKeyReference,                               'generated/azure_mgmt_compute/models/key_vault_key_reference.rb'
    autoload :DiskEncryptionSettings,                             'generated/azure_mgmt_compute/models/disk_encryption_settings.rb'
    autoload :VirtualHardDisk,                                    'generated/azure_mgmt_compute/models/virtual_hard_disk.rb'
    autoload :OSDisk,                                             'generated/azure_mgmt_compute/models/osdisk.rb'
    autoload :DataDisk,                                           'generated/azure_mgmt_compute/models/data_disk.rb'
    autoload :StorageProfile,                                     'generated/azure_mgmt_compute/models/storage_profile.rb'
    autoload :AdditionalUnattendContent,                          'generated/azure_mgmt_compute/models/additional_unattend_content.rb'
    autoload :WinRMListener,                                      'generated/azure_mgmt_compute/models/win_rmlistener.rb'
    autoload :WinRMConfiguration,                                 'generated/azure_mgmt_compute/models/win_rmconfiguration.rb'
    autoload :WindowsConfiguration,                               'generated/azure_mgmt_compute/models/windows_configuration.rb'
    autoload :SshPublicKey,                                       'generated/azure_mgmt_compute/models/ssh_public_key.rb'
    autoload :SshConfiguration,                                   'generated/azure_mgmt_compute/models/ssh_configuration.rb'
    autoload :LinuxConfiguration,                                 'generated/azure_mgmt_compute/models/linux_configuration.rb'
    autoload :VaultCertificate,                                   'generated/azure_mgmt_compute/models/vault_certificate.rb'
    autoload :VaultSecretGroup,                                   'generated/azure_mgmt_compute/models/vault_secret_group.rb'
    autoload :OSProfile,                                          'generated/azure_mgmt_compute/models/osprofile.rb'
    autoload :NetworkProfile,                                     'generated/azure_mgmt_compute/models/network_profile.rb'
    autoload :BootDiagnostics,                                    'generated/azure_mgmt_compute/models/boot_diagnostics.rb'
    autoload :DiagnosticsProfile,                                 'generated/azure_mgmt_compute/models/diagnostics_profile.rb'
    autoload :VirtualMachineExtensionHandlerInstanceView,         'generated/azure_mgmt_compute/models/virtual_machine_extension_handler_instance_view.rb'
    autoload :VirtualMachineAgentInstanceView,                    'generated/azure_mgmt_compute/models/virtual_machine_agent_instance_view.rb'
    autoload :DiskInstanceView,                                   'generated/azure_mgmt_compute/models/disk_instance_view.rb'
    autoload :BootDiagnosticsInstanceView,                        'generated/azure_mgmt_compute/models/boot_diagnostics_instance_view.rb'
    autoload :VirtualMachineInstanceView,                         'generated/azure_mgmt_compute/models/virtual_machine_instance_view.rb'
    autoload :VirtualMachineListResult,                           'generated/azure_mgmt_compute/models/virtual_machine_list_result.rb'
    autoload :Sku,                                                'generated/azure_mgmt_compute/models/sku.rb'
    autoload :UpgradePolicy,                                      'generated/azure_mgmt_compute/models/upgrade_policy.rb'
    autoload :VirtualMachineScaleSetOSProfile,                    'generated/azure_mgmt_compute/models/virtual_machine_scale_set_osprofile.rb'
    autoload :VirtualMachineScaleSetOSDisk,                       'generated/azure_mgmt_compute/models/virtual_machine_scale_set_osdisk.rb'
    autoload :VirtualMachineScaleSetStorageProfile,               'generated/azure_mgmt_compute/models/virtual_machine_scale_set_storage_profile.rb'
    autoload :ApiEntityReference,                                 'generated/azure_mgmt_compute/models/api_entity_reference.rb'
    autoload :VirtualMachineScaleSetNetworkProfile,               'generated/azure_mgmt_compute/models/virtual_machine_scale_set_network_profile.rb'
    autoload :VirtualMachineScaleSetExtensionProfile,             'generated/azure_mgmt_compute/models/virtual_machine_scale_set_extension_profile.rb'
    autoload :VirtualMachineScaleSetVMProfile,                    'generated/azure_mgmt_compute/models/virtual_machine_scale_set_vmprofile.rb'
    autoload :VirtualMachineScaleSetVMInstanceIDs,                'generated/azure_mgmt_compute/models/virtual_machine_scale_set_vminstance_ids.rb'
    autoload :VirtualMachineScaleSetVMInstanceRequiredIDs,        'generated/azure_mgmt_compute/models/virtual_machine_scale_set_vminstance_required_ids.rb'
    autoload :VirtualMachineStatusCodeCount,                      'generated/azure_mgmt_compute/models/virtual_machine_status_code_count.rb'
    autoload :VirtualMachineScaleSetInstanceViewStatusesSummary,  'generated/azure_mgmt_compute/models/virtual_machine_scale_set_instance_view_statuses_summary.rb'
    autoload :VirtualMachineScaleSetVMExtensionsSummary,          'generated/azure_mgmt_compute/models/virtual_machine_scale_set_vmextensions_summary.rb'
    autoload :VirtualMachineScaleSetInstanceView,                 'generated/azure_mgmt_compute/models/virtual_machine_scale_set_instance_view.rb'
    autoload :VirtualMachineScaleSetListResult,                   'generated/azure_mgmt_compute/models/virtual_machine_scale_set_list_result.rb'
    autoload :VirtualMachineScaleSetListWithLinkResult,           'generated/azure_mgmt_compute/models/virtual_machine_scale_set_list_with_link_result.rb'
    autoload :VirtualMachineScaleSetSkuCapacity,                  'generated/azure_mgmt_compute/models/virtual_machine_scale_set_sku_capacity.rb'
    autoload :VirtualMachineScaleSetSku,                          'generated/azure_mgmt_compute/models/virtual_machine_scale_set_sku.rb'
    autoload :VirtualMachineScaleSetListSkusResult,               'generated/azure_mgmt_compute/models/virtual_machine_scale_set_list_skus_result.rb'
    autoload :VirtualMachineScaleSetVMInstanceView,               'generated/azure_mgmt_compute/models/virtual_machine_scale_set_vminstance_view.rb'
    autoload :VirtualMachineScaleSetVMListResult,                 'generated/azure_mgmt_compute/models/virtual_machine_scale_set_vmlist_result.rb'
    autoload :ApiErrorBase,                                       'generated/azure_mgmt_compute/models/api_error_base.rb'
    autoload :InnerError,                                         'generated/azure_mgmt_compute/models/inner_error.rb'
    autoload :ApiError,                                           'generated/azure_mgmt_compute/models/api_error.rb'
    autoload :ComputeLongRunningOperationProperties,              'generated/azure_mgmt_compute/models/compute_long_running_operation_properties.rb'
    autoload :ContainerServiceOrchestratorProfile,                'generated/azure_mgmt_compute/models/container_service_orchestrator_profile.rb'
    autoload :ContainerServiceMasterProfile,                      'generated/azure_mgmt_compute/models/container_service_master_profile.rb'
    autoload :ContainerServiceAgentPoolProfile,                   'generated/azure_mgmt_compute/models/container_service_agent_pool_profile.rb'
    autoload :ContainerServiceWindowsProfile,                     'generated/azure_mgmt_compute/models/container_service_windows_profile.rb'
    autoload :ContainerServiceLinuxProfile,                       'generated/azure_mgmt_compute/models/container_service_linux_profile.rb'
    autoload :ContainerServiceSshConfiguration,                   'generated/azure_mgmt_compute/models/container_service_ssh_configuration.rb'
    autoload :ContainerServiceSshPublicKey,                       'generated/azure_mgmt_compute/models/container_service_ssh_public_key.rb'
    autoload :ContainerServiceDiagnosticsProfile,                 'generated/azure_mgmt_compute/models/container_service_diagnostics_profile.rb'
    autoload :ContainerServiceVMDiagnostics,                      'generated/azure_mgmt_compute/models/container_service_vmdiagnostics.rb'
    autoload :ContainerServiceListResult,                         'generated/azure_mgmt_compute/models/container_service_list_result.rb'
    autoload :AvailabilitySet,                                    'generated/azure_mgmt_compute/models/availability_set.rb'
    autoload :VirtualMachineExtensionImage,                       'generated/azure_mgmt_compute/models/virtual_machine_extension_image.rb'
    autoload :VirtualMachineImageResource,                        'generated/azure_mgmt_compute/models/virtual_machine_image_resource.rb'
    autoload :VirtualMachineExtension,                            'generated/azure_mgmt_compute/models/virtual_machine_extension.rb'
    autoload :VirtualMachineCaptureResult,                        'generated/azure_mgmt_compute/models/virtual_machine_capture_result.rb'
    autoload :NetworkInterfaceReference,                          'generated/azure_mgmt_compute/models/network_interface_reference.rb'
    autoload :VirtualMachine,                                     'generated/azure_mgmt_compute/models/virtual_machine.rb'
    autoload :VirtualMachineScaleSetIPConfiguration,              'generated/azure_mgmt_compute/models/virtual_machine_scale_set_ipconfiguration.rb'
    autoload :VirtualMachineScaleSetNetworkConfiguration,         'generated/azure_mgmt_compute/models/virtual_machine_scale_set_network_configuration.rb'
    autoload :VirtualMachineScaleSetExtension,                    'generated/azure_mgmt_compute/models/virtual_machine_scale_set_extension.rb'
    autoload :VirtualMachineScaleSet,                             'generated/azure_mgmt_compute/models/virtual_machine_scale_set.rb'
    autoload :VirtualMachineScaleSetVM,                           'generated/azure_mgmt_compute/models/virtual_machine_scale_set_vm.rb'
    autoload :ContainerService,                                   'generated/azure_mgmt_compute/models/container_service.rb'
    autoload :VirtualMachineImage,                                'generated/azure_mgmt_compute/models/virtual_machine_image.rb'
    autoload :StatusLevelTypes,                                   'generated/azure_mgmt_compute/models/status_level_types.rb'
    autoload :OperatingSystemTypes,                               'generated/azure_mgmt_compute/models/operating_system_types.rb'
    autoload :VirtualMachineSizeTypes,                            'generated/azure_mgmt_compute/models/virtual_machine_size_types.rb'
    autoload :CachingTypes,                                       'generated/azure_mgmt_compute/models/caching_types.rb'
    autoload :DiskCreateOptionTypes,                              'generated/azure_mgmt_compute/models/disk_create_option_types.rb'
    autoload :PassNames,                                          'generated/azure_mgmt_compute/models/pass_names.rb'
    autoload :ComponentNames,                                     'generated/azure_mgmt_compute/models/component_names.rb'
    autoload :SettingNames,                                       'generated/azure_mgmt_compute/models/setting_names.rb'
    autoload :ProtocolTypes,                                      'generated/azure_mgmt_compute/models/protocol_types.rb'
    autoload :UpgradeMode,                                        'generated/azure_mgmt_compute/models/upgrade_mode.rb'
    autoload :VirtualMachineScaleSetSkuScaleType,                 'generated/azure_mgmt_compute/models/virtual_machine_scale_set_sku_scale_type.rb'
    autoload :InstanceViewTypes,                                  'generated/azure_mgmt_compute/models/instance_view_types.rb'
    autoload :ContainerServiceOchestratorTypes,                   'generated/azure_mgmt_compute/models/container_service_ochestrator_types.rb'
    autoload :ContainerServiceVMSizeTypes,                        'generated/azure_mgmt_compute/models/container_service_vmsize_types.rb'
  end
end
