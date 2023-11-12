// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/netapp/v1beta1

package v1beta1

#DataProtectionReplicationInitParameters: {
	// The endpoint type, default value is dst for destination.
	endpointType?: null | string @go(EndpointType,*string)

	// Location of the primary volume. Changing this forces a new resource to be created.
	remoteVolumeLocation?: null | string @go(RemoteVolumeLocation,*string)

	// Replication frequency, supported values are '10minutes', 'hourly', 'daily', values are case sensitive.
	replicationFrequency?: null | string @go(ReplicationFrequency,*string)
}

#DataProtectionReplicationObservation: {
	// The endpoint type, default value is dst for destination.
	endpointType?: null | string @go(EndpointType,*string)

	// Location of the primary volume. Changing this forces a new resource to be created.
	remoteVolumeLocation?: null | string @go(RemoteVolumeLocation,*string)

	// Resource ID of the primary volume.
	remoteVolumeResourceId?: null | string @go(RemoteVolumeResourceID,*string)

	// Replication frequency, supported values are '10minutes', 'hourly', 'daily', values are case sensitive.
	replicationFrequency?: null | string @go(ReplicationFrequency,*string)
}

#DataProtectionReplicationParameters: {
	// The endpoint type, default value is dst for destination.
	// +kubebuilder:validation:Optional
	endpointType?: null | string @go(EndpointType,*string)

	// Location of the primary volume. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	remoteVolumeLocation?: null | string @go(RemoteVolumeLocation,*string)

	// Resource ID of the primary volume.
	// +crossplane:generate:reference:type=Volume
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	remoteVolumeResourceId?: null | string @go(RemoteVolumeResourceID,*string)

	// Replication frequency, supported values are '10minutes', 'hourly', 'daily', values are case sensitive.
	// +kubebuilder:validation:Optional
	replicationFrequency?: null | string @go(ReplicationFrequency,*string)
}

#DataProtectionSnapshotPolicyInitParameters: {
}

#DataProtectionSnapshotPolicyObservation: {
	// Resource ID of the snapshot policy to apply to the volume.
	snapshotPolicyId?: null | string @go(SnapshotPolicyID,*string)
}

#DataProtectionSnapshotPolicyParameters: {
	// Resource ID of the snapshot policy to apply to the volume.
	// +crossplane:generate:reference:type=SnapshotPolicy
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	snapshotPolicyId?: null | string @go(SnapshotPolicyID,*string)
}

#ExportPolicyRuleInitParameters: {
	// A list of allowed clients IPv4 addresses.
	allowedClients?: [...null | string] @go(AllowedClients,[]*string)

	// A list of allowed protocols. Valid values include CIFS, NFSv3, or NFSv4.1. Only one value is supported at this time. This replaces the previous arguments: cifs_enabled, nfsv3_enabled and nfsv4_enabled.
	protocolsEnabled?: [...null | string] @go(ProtocolsEnabled,[]*string)

	// Is root access permitted to this volume?
	rootAccessEnabled?: null | bool @go(RootAccessEnabled,*bool)

	// The index number of the rule.
	ruleIndex?: null | float64 @go(RuleIndex,*float64)

	// Is the file system on unix read only?
	unixReadOnly?: null | bool @go(UnixReadOnly,*bool)

	// Is the file system on unix read and write?
	unixReadWrite?: null | bool @go(UnixReadWrite,*bool)
}

#ExportPolicyRuleObservation: {
	// A list of allowed clients IPv4 addresses.
	allowedClients?: [...null | string] @go(AllowedClients,[]*string)

	// A list of allowed protocols. Valid values include CIFS, NFSv3, or NFSv4.1. Only one value is supported at this time. This replaces the previous arguments: cifs_enabled, nfsv3_enabled and nfsv4_enabled.
	protocolsEnabled?: [...null | string] @go(ProtocolsEnabled,[]*string)

	// Is root access permitted to this volume?
	rootAccessEnabled?: null | bool @go(RootAccessEnabled,*bool)

	// The index number of the rule.
	ruleIndex?: null | float64 @go(RuleIndex,*float64)

	// Is the file system on unix read only?
	unixReadOnly?: null | bool @go(UnixReadOnly,*bool)

	// Is the file system on unix read and write?
	unixReadWrite?: null | bool @go(UnixReadWrite,*bool)
}

#ExportPolicyRuleParameters: {
	// A list of allowed clients IPv4 addresses.
	// +kubebuilder:validation:Optional
	allowedClients: [...null | string] @go(AllowedClients,[]*string)

	// A list of allowed protocols. Valid values include CIFS, NFSv3, or NFSv4.1. Only one value is supported at this time. This replaces the previous arguments: cifs_enabled, nfsv3_enabled and nfsv4_enabled.
	// +kubebuilder:validation:Optional
	protocolsEnabled?: [...null | string] @go(ProtocolsEnabled,[]*string)

	// Is root access permitted to this volume?
	// +kubebuilder:validation:Optional
	rootAccessEnabled?: null | bool @go(RootAccessEnabled,*bool)

	// The index number of the rule.
	// +kubebuilder:validation:Optional
	ruleIndex?: null | float64 @go(RuleIndex,*float64)

	// Is the file system on unix read only?
	// +kubebuilder:validation:Optional
	unixReadOnly?: null | bool @go(UnixReadOnly,*bool)

	// Is the file system on unix read and write?
	// +kubebuilder:validation:Optional
	unixReadWrite?: null | bool @go(UnixReadWrite,*bool)
}

#VolumeInitParameters: {
	// Is the NetApp Volume enabled for Azure VMware Solution (AVS) datastore purpose. Defaults to false. Changing this forces a new resource to be created.
	azureVmwareDataStoreEnabled?: null | bool @go(AzureVMwareDataStoreEnabled,*bool)

	// A data_protection_replication block as defined below. Changing this forces a new resource to be created.
	dataProtectionReplication?: [...#DataProtectionReplicationInitParameters] @go(DataProtectionReplication,[]DataProtectionReplicationInitParameters)

	// A data_protection_snapshot_policy block as defined below.
	dataProtectionSnapshotPolicy?: [...#DataProtectionSnapshotPolicyInitParameters] @go(DataProtectionSnapshotPolicy,[]DataProtectionSnapshotPolicyInitParameters)

	// One or more export_policy_rule block defined below.
	exportPolicyRule?: [...#ExportPolicyRuleInitParameters] @go(ExportPolicyRule,[]ExportPolicyRuleInitParameters)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Indicates which network feature to use, accepted values are Basic or Standard, it defaults to Basic if not defined. This is a feature in public preview and for more information about it and how to register, please refer to Configure network features for an Azure NetApp Files volume. Changing this forces a new resource to be created.
	networkFeatures?: null | string @go(NetworkFeatures,*string)

	// The target volume protocol expressed as a list. Supported single value include CIFS, NFSv3, or NFSv4.1. If argument is not defined it will default to NFSv3. Changing this forces a new resource to be created and data will be lost. Dual protocol scenario is supported for CIFS and NFSv3, for more information, please refer to Create a dual-protocol volume for Azure NetApp Files document.
	protocols?: [...null | string] @go(Protocols,[]*string)

	// Volume security style, accepted values are Unix or Ntfs. If not provided, single-protocol volume is created defaulting to Unix if it is NFSv3 or NFSv4.1 volume, if CIFS, it will default to Ntfs. In a dual-protocol volume, if not provided, its value will be Ntfs. Changing this forces a new resource to be created.
	securityStyle?: null | string @go(SecurityStyle,*string)

	// The target performance of the file system. Valid values include Premium, Standard, or Ultra. Changing this forces a new resource to be created.
	serviceLevel?: null | string @go(ServiceLevel,*string)

	// Specifies whether the .snapshot (NFS clients) or ~snapshot (SMB clients) path of a volume is visible, default value is true.
	snapshotDirectoryVisible?: null | bool @go(SnapshotDirectoryVisible,*bool)

	// The maximum Storage Quota allowed for a file system in Gigabytes.
	storageQuotaInGb?: null | float64 @go(StorageQuotaInGb,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Throughput of this volume in Mibps.
	throughputInMibps?: null | float64 @go(ThroughputInMibps,*float64)

	// A unique file path for the volume. Used when creating mount targets. Changing this forces a new resource to be created.
	volumePath?: null | string @go(VolumePath,*string)

	// Specifies the Availability Zone in which the Volume should be located. Possible values are 1, 2 and 3. Changing this forces a new resource to be created. This feature is currently in preview, for more information on how to enable it, please refer to Manage availability zone volume placement for Azure NetApp Files.
	zone?: null | string @go(Zone,*string)
}

#VolumeObservation: {
	// The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
	accountName?: null | string @go(AccountName,*string)

	// Is the NetApp Volume enabled for Azure VMware Solution (AVS) datastore purpose. Defaults to false. Changing this forces a new resource to be created.
	azureVmwareDataStoreEnabled?: null | bool @go(AzureVMwareDataStoreEnabled,*bool)

	// Creates volume from snapshot. Following properties must be the same as the original volume where the snapshot was taken from: protocols, subnet_id, location, service_level, resource_group_name, account_name and pool_name. Changing this forces a new resource to be created.
	createFromSnapshotResourceId?: null | string @go(CreateFromSnapshotResourceID,*string)

	// A data_protection_replication block as defined below. Changing this forces a new resource to be created.
	dataProtectionReplication?: [...#DataProtectionReplicationObservation] @go(DataProtectionReplication,[]DataProtectionReplicationObservation)

	// A data_protection_snapshot_policy block as defined below.
	dataProtectionSnapshotPolicy?: [...#DataProtectionSnapshotPolicyObservation] @go(DataProtectionSnapshotPolicy,[]DataProtectionSnapshotPolicyObservation)

	// One or more export_policy_rule block defined below.
	exportPolicyRule?: [...#ExportPolicyRuleObservation] @go(ExportPolicyRule,[]ExportPolicyRuleObservation)

	// The ID of the NetApp Volume.
	id?: null | string @go(ID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// A list of IPv4 Addresses which should be used to mount the volume.
	mountIpAddresses?: [...null | string] @go(MountIPAddresses,[]*string)

	// Indicates which network feature to use, accepted values are Basic or Standard, it defaults to Basic if not defined. This is a feature in public preview and for more information about it and how to register, please refer to Configure network features for an Azure NetApp Files volume. Changing this forces a new resource to be created.
	networkFeatures?: null | string @go(NetworkFeatures,*string)

	// The name of the NetApp pool in which the NetApp Volume should be created. Changing this forces a new resource to be created.
	poolName?: null | string @go(PoolName,*string)

	// The target volume protocol expressed as a list. Supported single value include CIFS, NFSv3, or NFSv4.1. If argument is not defined it will default to NFSv3. Changing this forces a new resource to be created and data will be lost. Dual protocol scenario is supported for CIFS and NFSv3, for more information, please refer to Create a dual-protocol volume for Azure NetApp Files document.
	protocols?: [...null | string] @go(Protocols,[]*string)

	// The name of the resource group where the NetApp Volume should be created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Volume security style, accepted values are Unix or Ntfs. If not provided, single-protocol volume is created defaulting to Unix if it is NFSv3 or NFSv4.1 volume, if CIFS, it will default to Ntfs. In a dual-protocol volume, if not provided, its value will be Ntfs. Changing this forces a new resource to be created.
	securityStyle?: null | string @go(SecurityStyle,*string)

	// The target performance of the file system. Valid values include Premium, Standard, or Ultra. Changing this forces a new resource to be created.
	serviceLevel?: null | string @go(ServiceLevel,*string)

	// Specifies whether the .snapshot (NFS clients) or ~snapshot (SMB clients) path of a volume is visible, default value is true.
	snapshotDirectoryVisible?: null | bool @go(SnapshotDirectoryVisible,*bool)

	// The maximum Storage Quota allowed for a file system in Gigabytes.
	storageQuotaInGb?: null | float64 @go(StorageQuotaInGb,*float64)

	// The ID of the Subnet the NetApp Volume resides in, which must have the Microsoft.NetApp/volumes delegation. Changing this forces a new resource to be created.
	subnetId?: null | string @go(SubnetID,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Throughput of this volume in Mibps.
	throughputInMibps?: null | float64 @go(ThroughputInMibps,*float64)

	// A unique file path for the volume. Used when creating mount targets. Changing this forces a new resource to be created.
	volumePath?: null | string @go(VolumePath,*string)

	// Specifies the Availability Zone in which the Volume should be located. Possible values are 1, 2 and 3. Changing this forces a new resource to be created. This feature is currently in preview, for more information on how to enable it, please refer to Manage availability zone volume placement for Azure NetApp Files.
	zone?: null | string @go(Zone,*string)
}

#VolumeParameters: {
	// The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Account
	// +kubebuilder:validation:Optional
	accountName?: null | string @go(AccountName,*string)

	// Is the NetApp Volume enabled for Azure VMware Solution (AVS) datastore purpose. Defaults to false. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	azureVmwareDataStoreEnabled?: null | bool @go(AzureVMwareDataStoreEnabled,*bool)

	// Creates volume from snapshot. Following properties must be the same as the original volume where the snapshot was taken from: protocols, subnet_id, location, service_level, resource_group_name, account_name and pool_name. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Snapshot
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	createFromSnapshotResourceId?: null | string @go(CreateFromSnapshotResourceID,*string)

	// A data_protection_replication block as defined below. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	dataProtectionReplication?: [...#DataProtectionReplicationParameters] @go(DataProtectionReplication,[]DataProtectionReplicationParameters)

	// A data_protection_snapshot_policy block as defined below.
	// +kubebuilder:validation:Optional
	dataProtectionSnapshotPolicy?: [...#DataProtectionSnapshotPolicyParameters] @go(DataProtectionSnapshotPolicy,[]DataProtectionSnapshotPolicyParameters)

	// One or more export_policy_rule block defined below.
	// +kubebuilder:validation:Optional
	exportPolicyRule?: [...#ExportPolicyRuleParameters] @go(ExportPolicyRule,[]ExportPolicyRuleParameters)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Indicates which network feature to use, accepted values are Basic or Standard, it defaults to Basic if not defined. This is a feature in public preview and for more information about it and how to register, please refer to Configure network features for an Azure NetApp Files volume. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	networkFeatures?: null | string @go(NetworkFeatures,*string)

	// The name of the NetApp pool in which the NetApp Volume should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Pool
	// +kubebuilder:validation:Optional
	poolName?: null | string @go(PoolName,*string)

	// The target volume protocol expressed as a list. Supported single value include CIFS, NFSv3, or NFSv4.1. If argument is not defined it will default to NFSv3. Changing this forces a new resource to be created and data will be lost. Dual protocol scenario is supported for CIFS and NFSv3, for more information, please refer to Create a dual-protocol volume for Azure NetApp Files document.
	// +kubebuilder:validation:Optional
	protocols?: [...null | string] @go(Protocols,[]*string)

	// The name of the resource group where the NetApp Volume should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Volume security style, accepted values are Unix or Ntfs. If not provided, single-protocol volume is created defaulting to Unix if it is NFSv3 or NFSv4.1 volume, if CIFS, it will default to Ntfs. In a dual-protocol volume, if not provided, its value will be Ntfs. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	securityStyle?: null | string @go(SecurityStyle,*string)

	// The target performance of the file system. Valid values include Premium, Standard, or Ultra. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	serviceLevel?: null | string @go(ServiceLevel,*string)

	// Specifies whether the .snapshot (NFS clients) or ~snapshot (SMB clients) path of a volume is visible, default value is true.
	// +kubebuilder:validation:Optional
	snapshotDirectoryVisible?: null | bool @go(SnapshotDirectoryVisible,*bool)

	// The maximum Storage Quota allowed for a file system in Gigabytes.
	// +kubebuilder:validation:Optional
	storageQuotaInGb?: null | float64 @go(StorageQuotaInGb,*float64)

	// The ID of the Subnet the NetApp Volume resides in, which must have the Microsoft.NetApp/volumes delegation. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Throughput of this volume in Mibps.
	// +kubebuilder:validation:Optional
	throughputInMibps?: null | float64 @go(ThroughputInMibps,*float64)

	// A unique file path for the volume. Used when creating mount targets. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	volumePath?: null | string @go(VolumePath,*string)

	// Specifies the Availability Zone in which the Volume should be located. Possible values are 1, 2 and 3. Changing this forces a new resource to be created. This feature is currently in preview, for more information on how to enable it, please refer to Manage availability zone volume placement for Azure NetApp Files.
	// +kubebuilder:validation:Optional
	zone?: null | string @go(Zone,*string)
}

// VolumeSpec defines the desired state of Volume
#VolumeSpec: {
	forProvider: #VolumeParameters @go(ForProvider)

	// THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored
	// unless the relevant Crossplane feature flag is enabled, and may be
	// changed or removed without notice.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #VolumeInitParameters @go(InitProvider)
}

// VolumeStatus defines the observed state of Volume.
#VolumeStatus: {
	atProvider?: #VolumeObservation @go(AtProvider)
}

// Volume is the Schema for the Volumes API. Manages a NetApp Volume.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Volume: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || has(self.initProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.serviceLevel) || has(self.initProvider.serviceLevel)",message="serviceLevel is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.storageQuotaInGb) || has(self.initProvider.storageQuotaInGb)",message="storageQuotaInGb is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.volumePath) || has(self.initProvider.volumePath)",message="volumePath is a required parameter"
	spec:    #VolumeSpec   @go(Spec)
	status?: #VolumeStatus @go(Status)
}

// VolumeList contains a list of Volumes
#VolumeList: {
	items: [...#Volume] @go(Items,[]Volume)
}
