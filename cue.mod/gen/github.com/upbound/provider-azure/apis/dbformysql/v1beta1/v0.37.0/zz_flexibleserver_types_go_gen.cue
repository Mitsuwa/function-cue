// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/dbformysql/v1beta1

package v1beta1

#CustomerManagedKeyInitParameters: {
	// The ID of the geo backup Key Vault Key. It can't cross region and need Customer Managed Key in same region as geo backup.
	geoBackupKeyVaultKeyId?: null | string @go(GeoBackupKeyVaultKeyID,*string)

	// The geo backup user managed identity id for a Customer Managed Key. Should be added with identity_ids. It can't cross region and need identity in same region as geo backup.
	geoBackupUserAssignedIdentityId?: null | string @go(GeoBackupUserAssignedIdentityID,*string)

	// The ID of the Key Vault Key.
	keyVaultKeyId?: null | string @go(KeyVaultKeyID,*string)

	// Specifies the primary user managed identity id for a Customer Managed Key. Should be added with identity_ids.
	primaryUserAssignedIdentityId?: null | string @go(PrimaryUserAssignedIdentityID,*string)
}

#CustomerManagedKeyObservation: {
	// The ID of the geo backup Key Vault Key. It can't cross region and need Customer Managed Key in same region as geo backup.
	geoBackupKeyVaultKeyId?: null | string @go(GeoBackupKeyVaultKeyID,*string)

	// The geo backup user managed identity id for a Customer Managed Key. Should be added with identity_ids. It can't cross region and need identity in same region as geo backup.
	geoBackupUserAssignedIdentityId?: null | string @go(GeoBackupUserAssignedIdentityID,*string)

	// The ID of the Key Vault Key.
	keyVaultKeyId?: null | string @go(KeyVaultKeyID,*string)

	// Specifies the primary user managed identity id for a Customer Managed Key. Should be added with identity_ids.
	primaryUserAssignedIdentityId?: null | string @go(PrimaryUserAssignedIdentityID,*string)
}

#CustomerManagedKeyParameters: {
	// The ID of the geo backup Key Vault Key. It can't cross region and need Customer Managed Key in same region as geo backup.
	// +kubebuilder:validation:Optional
	geoBackupKeyVaultKeyId?: null | string @go(GeoBackupKeyVaultKeyID,*string)

	// The geo backup user managed identity id for a Customer Managed Key. Should be added with identity_ids. It can't cross region and need identity in same region as geo backup.
	// +kubebuilder:validation:Optional
	geoBackupUserAssignedIdentityId?: null | string @go(GeoBackupUserAssignedIdentityID,*string)

	// The ID of the Key Vault Key.
	// +kubebuilder:validation:Optional
	keyVaultKeyId?: null | string @go(KeyVaultKeyID,*string)

	// Specifies the primary user managed identity id for a Customer Managed Key. Should be added with identity_ids.
	// +kubebuilder:validation:Optional
	primaryUserAssignedIdentityId?: null | string @go(PrimaryUserAssignedIdentityID,*string)
}

#FlexibleServerInitParameters: {
	// The Administrator login for the MySQL Flexible Server. Required when create_mode is Default. Changing this forces a new MySQL Flexible Server to be created.
	administratorLogin?: null | string @go(AdministratorLogin,*string)

	// The backup retention days for the MySQL Flexible Server. Possible values are between 1 and 35 days. Defaults to 7.
	backupRetentionDays?: null | float64 @go(BackupRetentionDays,*float64)

	// The creation mode which can be used to restore or replicate existing servers. Possible values are Default, PointInTimeRestore, GeoRestore, and Replica. Changing this forces a new MySQL Flexible Server to be created.
	createMode?: null | string @go(CreateMode,*string)

	// A customer_managed_key block as defined below.
	customerManagedKey?: [...#CustomerManagedKeyInitParameters] @go(CustomerManagedKey,[]CustomerManagedKeyInitParameters)

	// Should geo redundant backup enabled? Defaults to false. Changing this forces a new MySQL Flexible Server to be created.
	geoRedundantBackupEnabled?: null | bool @go(GeoRedundantBackupEnabled,*bool)

	// A high_availability block as defined below.
	highAvailability?: [...#HighAvailabilityInitParameters] @go(HighAvailability,[]HighAvailabilityInitParameters)

	// An identity block as defined below.
	identity?: [...#IdentityInitParameters] @go(Identity,[]IdentityInitParameters)

	// The Azure Region where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created.
	location?: null | string @go(Location,*string)

	// A maintenance_window block as defined below.
	maintenanceWindow?: [...#MaintenanceWindowInitParameters] @go(MaintenanceWindow,[]MaintenanceWindowInitParameters)

	// The point in time to restore from creation_source_server_id when create_mode is PointInTimeRestore. Changing this forces a new MySQL Flexible Server to be created.
	pointInTimeRestoreTimeInUtc?: null | string @go(PointInTimeRestoreTimeInUtc,*string)

	// The replication role. Possible value is None.
	replicationRole?: null | string @go(ReplicationRole,*string)

	// The SKU Name for the MySQL Flexible Server.
	skuName?: null | string @go(SkuName,*string)

	// The resource ID of the source MySQL Flexible Server to be restored. Required when create_mode is PointInTimeRestore, GeoRestore, and Replica. Changing this forces a new MySQL Flexible Server to be created.
	sourceServerId?: null | string @go(SourceServerID,*string)

	// A storage block as defined below.
	storage?: [...#StorageInitParameters] @go(Storage,[]StorageInitParameters)

	// A mapping of tags which should be assigned to the MySQL Flexible Server.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The version of the MySQL Flexible Server to use. Possible values are 5.7, and 8.0.21. Changing this forces a new MySQL Flexible Server to be created.
	version?: null | string @go(Version,*string)

	// Specifies the Availability Zone in which this MySQL Flexible Server should be located. Possible values are 1, 2 and 3.
	zone?: null | string @go(Zone,*string)
}

#FlexibleServerObservation: {
	// The Administrator login for the MySQL Flexible Server. Required when create_mode is Default. Changing this forces a new MySQL Flexible Server to be created.
	administratorLogin?: null | string @go(AdministratorLogin,*string)

	// The backup retention days for the MySQL Flexible Server. Possible values are between 1 and 35 days. Defaults to 7.
	backupRetentionDays?: null | float64 @go(BackupRetentionDays,*float64)

	// The creation mode which can be used to restore or replicate existing servers. Possible values are Default, PointInTimeRestore, GeoRestore, and Replica. Changing this forces a new MySQL Flexible Server to be created.
	createMode?: null | string @go(CreateMode,*string)

	// A customer_managed_key block as defined below.
	customerManagedKey?: [...#CustomerManagedKeyObservation] @go(CustomerManagedKey,[]CustomerManagedKeyObservation)

	// The ID of the virtual network subnet to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
	delegatedSubnetId?: null | string @go(DelegatedSubnetID,*string)

	// The fully qualified domain name of the MySQL Flexible Server.
	fqdn?: null | string @go(Fqdn,*string)

	// Should geo redundant backup enabled? Defaults to false. Changing this forces a new MySQL Flexible Server to be created.
	geoRedundantBackupEnabled?: null | bool @go(GeoRedundantBackupEnabled,*bool)

	// A high_availability block as defined below.
	highAvailability?: [...#HighAvailabilityObservation] @go(HighAvailability,[]HighAvailabilityObservation)

	// The ID of the MySQL Flexible Server.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// The Azure Region where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created.
	location?: null | string @go(Location,*string)

	// A maintenance_window block as defined below.
	maintenanceWindow?: [...#MaintenanceWindowObservation] @go(MaintenanceWindow,[]MaintenanceWindowObservation)

	// The point in time to restore from creation_source_server_id when create_mode is PointInTimeRestore. Changing this forces a new MySQL Flexible Server to be created.
	pointInTimeRestoreTimeInUtc?: null | string @go(PointInTimeRestoreTimeInUtc,*string)

	// The ID of the private DNS zone to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
	privateDnsZoneId?: null | string @go(PrivateDNSZoneID,*string)

	// Is the public network access enabled?
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The maximum number of replicas that a primary MySQL Flexible Server can have.
	replicaCapacity?: null | float64 @go(ReplicaCapacity,*float64)

	// The replication role. Possible value is None.
	replicationRole?: null | string @go(ReplicationRole,*string)

	// The name of the Resource Group where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The SKU Name for the MySQL Flexible Server.
	skuName?: null | string @go(SkuName,*string)

	// The resource ID of the source MySQL Flexible Server to be restored. Required when create_mode is PointInTimeRestore, GeoRestore, and Replica. Changing this forces a new MySQL Flexible Server to be created.
	sourceServerId?: null | string @go(SourceServerID,*string)

	// A storage block as defined below.
	storage?: [...#StorageObservation] @go(Storage,[]StorageObservation)

	// A mapping of tags which should be assigned to the MySQL Flexible Server.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The version of the MySQL Flexible Server to use. Possible values are 5.7, and 8.0.21. Changing this forces a new MySQL Flexible Server to be created.
	version?: null | string @go(Version,*string)

	// Specifies the Availability Zone in which this MySQL Flexible Server should be located. Possible values are 1, 2 and 3.
	zone?: null | string @go(Zone,*string)
}

#FlexibleServerParameters: {
	// The Administrator login for the MySQL Flexible Server. Required when create_mode is Default. Changing this forces a new MySQL Flexible Server to be created.
	// +kubebuilder:validation:Optional
	administratorLogin?: null | string @go(AdministratorLogin,*string)

	// The backup retention days for the MySQL Flexible Server. Possible values are between 1 and 35 days. Defaults to 7.
	// +kubebuilder:validation:Optional
	backupRetentionDays?: null | float64 @go(BackupRetentionDays,*float64)

	// The creation mode which can be used to restore or replicate existing servers. Possible values are Default, PointInTimeRestore, GeoRestore, and Replica. Changing this forces a new MySQL Flexible Server to be created.
	// +kubebuilder:validation:Optional
	createMode?: null | string @go(CreateMode,*string)

	// A customer_managed_key block as defined below.
	// +kubebuilder:validation:Optional
	customerManagedKey?: [...#CustomerManagedKeyParameters] @go(CustomerManagedKey,[]CustomerManagedKeyParameters)

	// The ID of the virtual network subnet to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	delegatedSubnetId?: null | string @go(DelegatedSubnetID,*string)

	// Should geo redundant backup enabled? Defaults to false. Changing this forces a new MySQL Flexible Server to be created.
	// +kubebuilder:validation:Optional
	geoRedundantBackupEnabled?: null | bool @go(GeoRedundantBackupEnabled,*bool)

	// A high_availability block as defined below.
	// +kubebuilder:validation:Optional
	highAvailability?: [...#HighAvailabilityParameters] @go(HighAvailability,[]HighAvailabilityParameters)

	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// The Azure Region where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// A maintenance_window block as defined below.
	// +kubebuilder:validation:Optional
	maintenanceWindow?: [...#MaintenanceWindowParameters] @go(MaintenanceWindow,[]MaintenanceWindowParameters)

	// The point in time to restore from creation_source_server_id when create_mode is PointInTimeRestore. Changing this forces a new MySQL Flexible Server to be created.
	// +kubebuilder:validation:Optional
	pointInTimeRestoreTimeInUtc?: null | string @go(PointInTimeRestoreTimeInUtc,*string)

	// The ID of the private DNS zone to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.PrivateDNSZone
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	privateDnsZoneId?: null | string @go(PrivateDNSZoneID,*string)

	// The replication role. Possible value is None.
	// +kubebuilder:validation:Optional
	replicationRole?: null | string @go(ReplicationRole,*string)

	// The name of the Resource Group where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The SKU Name for the MySQL Flexible Server.
	// +kubebuilder:validation:Optional
	skuName?: null | string @go(SkuName,*string)

	// The resource ID of the source MySQL Flexible Server to be restored. Required when create_mode is PointInTimeRestore, GeoRestore, and Replica. Changing this forces a new MySQL Flexible Server to be created.
	// +kubebuilder:validation:Optional
	sourceServerId?: null | string @go(SourceServerID,*string)

	// A storage block as defined below.
	// +kubebuilder:validation:Optional
	storage?: [...#StorageParameters] @go(Storage,[]StorageParameters)

	// A mapping of tags which should be assigned to the MySQL Flexible Server.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The version of the MySQL Flexible Server to use. Possible values are 5.7, and 8.0.21. Changing this forces a new MySQL Flexible Server to be created.
	// +kubebuilder:validation:Optional
	version?: null | string @go(Version,*string)

	// Specifies the Availability Zone in which this MySQL Flexible Server should be located. Possible values are 1, 2 and 3.
	// +kubebuilder:validation:Optional
	zone?: null | string @go(Zone,*string)
}

#HighAvailabilityInitParameters: {
	// The high availability mode for the MySQL Flexible Server. Possibles values are SameZone and ZoneRedundant.
	mode?: null | string @go(Mode,*string)

	// Specifies the Availability Zone in which the standby Flexible Server should be located. Possible values are 1, 2 and 3.
	standbyAvailabilityZone?: null | string @go(StandbyAvailabilityZone,*string)
}

#HighAvailabilityObservation: {
	// The high availability mode for the MySQL Flexible Server. Possibles values are SameZone and ZoneRedundant.
	mode?: null | string @go(Mode,*string)

	// Specifies the Availability Zone in which the standby Flexible Server should be located. Possible values are 1, 2 and 3.
	standbyAvailabilityZone?: null | string @go(StandbyAvailabilityZone,*string)
}

#HighAvailabilityParameters: {
	// The high availability mode for the MySQL Flexible Server. Possibles values are SameZone and ZoneRedundant.
	// +kubebuilder:validation:Optional
	mode?: null | string @go(Mode,*string)

	// Specifies the Availability Zone in which the standby Flexible Server should be located. Possible values are 1, 2 and 3.
	// +kubebuilder:validation:Optional
	standbyAvailabilityZone?: null | string @go(StandbyAvailabilityZone,*string)
}

#IdentityInitParameters: {
	// A list of User Assigned Managed Identity IDs to be assigned to this MySQL Flexible Server.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this MySQL Flexible Server. The only possible value is UserAssigned.
	type?: null | string @go(Type,*string)
}

#IdentityObservation: {
	// A list of User Assigned Managed Identity IDs to be assigned to this MySQL Flexible Server.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this MySQL Flexible Server. The only possible value is UserAssigned.
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// A list of User Assigned Managed Identity IDs to be assigned to this MySQL Flexible Server.
	// +kubebuilder:validation:Optional
	identityIds: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this MySQL Flexible Server. The only possible value is UserAssigned.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#MaintenanceWindowInitParameters: {
	// The day of week for maintenance window. Defaults to 0.
	dayOfWeek?: null | float64 @go(DayOfWeek,*float64)

	// The start hour for maintenance window. Defaults to 0.
	startHour?: null | float64 @go(StartHour,*float64)

	// The start minute for maintenance window. Defaults to 0.
	startMinute?: null | float64 @go(StartMinute,*float64)
}

#MaintenanceWindowObservation: {
	// The day of week for maintenance window. Defaults to 0.
	dayOfWeek?: null | float64 @go(DayOfWeek,*float64)

	// The start hour for maintenance window. Defaults to 0.
	startHour?: null | float64 @go(StartHour,*float64)

	// The start minute for maintenance window. Defaults to 0.
	startMinute?: null | float64 @go(StartMinute,*float64)
}

#MaintenanceWindowParameters: {
	// The day of week for maintenance window. Defaults to 0.
	// +kubebuilder:validation:Optional
	dayOfWeek?: null | float64 @go(DayOfWeek,*float64)

	// The start hour for maintenance window. Defaults to 0.
	// +kubebuilder:validation:Optional
	startHour?: null | float64 @go(StartHour,*float64)

	// The start minute for maintenance window. Defaults to 0.
	// +kubebuilder:validation:Optional
	startMinute?: null | float64 @go(StartMinute,*float64)
}

#StorageInitParameters: {
	// Should Storage Auto Grow be enabled? Defaults to true.
	autoGrowEnabled?: null | bool @go(AutoGrowEnabled,*bool)

	// The storage IOPS for the MySQL Flexible Server. Possible values are between 360 and 20000.
	iops?: null | float64 @go(Iops,*float64)

	// The max storage allowed for the MySQL Flexible Server. Possible values are between 20 and 16384.
	sizeGb?: null | float64 @go(SizeGb,*float64)
}

#StorageObservation: {
	// Should Storage Auto Grow be enabled? Defaults to true.
	autoGrowEnabled?: null | bool @go(AutoGrowEnabled,*bool)

	// The storage IOPS for the MySQL Flexible Server. Possible values are between 360 and 20000.
	iops?: null | float64 @go(Iops,*float64)

	// The max storage allowed for the MySQL Flexible Server. Possible values are between 20 and 16384.
	sizeGb?: null | float64 @go(SizeGb,*float64)
}

#StorageParameters: {
	// Should Storage Auto Grow be enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	autoGrowEnabled?: null | bool @go(AutoGrowEnabled,*bool)

	// The storage IOPS for the MySQL Flexible Server. Possible values are between 360 and 20000.
	// +kubebuilder:validation:Optional
	iops?: null | float64 @go(Iops,*float64)

	// The max storage allowed for the MySQL Flexible Server. Possible values are between 20 and 16384.
	// +kubebuilder:validation:Optional
	sizeGb?: null | float64 @go(SizeGb,*float64)
}

// FlexibleServerSpec defines the desired state of FlexibleServer
#FlexibleServerSpec: {
	forProvider: #FlexibleServerParameters @go(ForProvider)

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
	initProvider?: #FlexibleServerInitParameters @go(InitProvider)
}

// FlexibleServerStatus defines the observed state of FlexibleServer.
#FlexibleServerStatus: {
	atProvider?: #FlexibleServerObservation @go(AtProvider)
}

// FlexibleServer is the Schema for the FlexibleServers API. Manages a MySQL Flexible Server.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#FlexibleServer: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #FlexibleServerSpec   @go(Spec)
	status?: #FlexibleServerStatus @go(Status)
}

// FlexibleServerList contains a list of FlexibleServers
#FlexibleServerList: {
	items: [...#FlexibleServer] @go(Items,[]FlexibleServer)
}
