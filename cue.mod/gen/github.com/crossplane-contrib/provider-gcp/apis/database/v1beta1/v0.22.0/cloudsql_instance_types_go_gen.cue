// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-gcp/apis/database/v1beta1

package v1beta1

// StateRunnable represents a CloudSQL instance in a running, available, and ready state
#StateRunnable:                                        "RUNNABLE"
#StateCreating:                                        "PENDING_CREATE"
#StateSuspended:                                       "SUSPENDED"
#StateMaintenance:                                     "MAINTENANCE"
#StateCreationFailed:                                  "FAILED"
#StateUnknownState:                                    "UNKNOWN_STATE"
#CloudSQLSecretServerCACertificateCertKey:             "serverCACertificateCert"
#CloudSQLSecretServerCACertificateCertSerialNumberKey: "serverCACertificateCertSerialNumber"
#CloudSQLSecretServerCACertificateCommonNameKey:       "serverCACertificateCommonName"
#CloudSQLSecretServerCACertificateCreateTimeKey:       "serverCACertificateCreateTime"
#CloudSQLSecretServerCACertificateExpirationTimeKey:   "serverCACertificateExpirationTime"
#CloudSQLSecretServerCACertificateInstanceKey:         "serverCACertificateInstance"
#CloudSQLSecretServerCACertificateSha1FingerprintKey:  "serverCACertificateSha1Fingerprint"
#CloudSQLSecretConnectionName:                         "connectionName"

#MysqlDBVersionPrefix:      "MYSQL"
#MysqlDefaultUser:          "root"
#PostgresqlDBVersionPrefix: "POSTGRES"
#PostgresqlDefaultUser:     "postgres"
#PrivateIPType:             "PRIVATE"
#PublicIPType:              "PRIMARY"
#PrivateIPKey:              "privateIP"
#PublicIPKey:               "publicIP"

// CloudSQLInstanceParameters define the desired state of a Google CloudSQL
// instance. Most of its fields are direct mirror of GCP DatabaseInstance object.
// See https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/instances#DatabaseInstance
#CloudSQLInstanceParameters: {
	// Region: The geographical region. Can be us-central (FIRST_GEN
	// instances only), us-central1 (SECOND_GEN instances only), asia-east1
	// or europe-west1. Defaults to us-central or us-central1 depending on
	// the instance type (First Generation or Second Generation). The region
	// can not be changed after instance creation.
	// +immutable
	region: string @go(Region)

	// Settings: The user settings.
	settings: #Settings @go(Settings)

	// DatabaseVersion: The database engine type and version. The
	// databaseVersion field can not be changed after instance creation.
	// MySQL Second Generation instances: MYSQL_5_7 (default) or MYSQL_5_6.
	// PostgreSQL instances: POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13
	// MySQL First Generation instances: MYSQL_5_6 (default) or MYSQL_5_5
	// +immutable
	// +optional
	databaseVersion?: null | string @go(DatabaseVersion,*string)

	// MasterInstanceName: The name of the instance which will act as master
	// in the replication setup.
	// +optional
	// +immutable
	masterInstanceName?: null | string @go(MasterInstanceName,*string)

	// DiskEncryptionConfiguration: Disk encryption configuration specific
	// to an instance. Applies only to Second Generation instances.
	// +optional
	// +immutable
	diskEncryptionConfiguration?: null | #DiskEncryptionConfiguration @go(DiskEncryptionConfiguration,*DiskEncryptionConfiguration)

	// FailoverReplica: The name and status of the failover replica. This
	// property is applicable only to Second Generation instances.
	// +optional
	failoverReplica?: null | #DatabaseInstanceFailoverReplicaSpec @go(FailoverReplica,*DatabaseInstanceFailoverReplicaSpec)

	// GceZone: The Compute Engine zone that the instance is currently
	// serving from. This value could be different from the zone that was
	// specified when the instance was created if the instance has failed
	// over to its secondary zone.
	// +optional
	gceZone?: null | string @go(GceZone,*string)

	// InstanceType: The instance type. This can be one of the
	// following.
	// CLOUD_SQL_INSTANCE: A Cloud SQL instance that is not replicating from
	// a master.
	// ON_PREMISES_INSTANCE: An instance running on the customer's
	// premises.
	// READ_REPLICA_INSTANCE: A Cloud SQL instance configured as a
	// read-replica.
	// +optional
	// +immutable
	instanceType?: null | string @go(InstanceType,*string)

	// MaxDiskSize: The maximum disk size of the instance in bytes.
	// +optional
	maxDiskSize?: null | int64 @go(MaxDiskSize,*int64)

	// OnPremisesConfiguration: Configuration specific to on-premises
	// instances.
	// +optional
	onPremisesConfiguration?: null | #OnPremisesConfiguration @go(OnPremisesConfiguration,*OnPremisesConfiguration)

	// ReplicaNames: The replicas of the instance.
	// +optional
	replicaNames?: [...string] @go(ReplicaNames,[]string)

	// SuspensionReason: If the instance state is SUSPENDED, the reason for
	// the suspension.
	// +optional
	suspensionReason?: [...string] @go(SuspensionReason,[]string)
}

// Settings is Cloud SQL database instance settings.
#Settings: {
	// Tier: The tier (or machine type) for this instance, for example
	// db-n1-standard-1 (MySQL instances) or db-custom-1-3840 (PostgreSQL
	// instances). For MySQL instances, this property determines whether the
	// instance is First or Second Generation. For more information, see
	// Instance Settings.
	tier: string @go(Tier)

	// ActivationPolicy: The activation policy specifies when the instance
	// is activated; it is applicable only when the instance state is
	// RUNNABLE. Valid values:
	// ALWAYS: The instance is on, and remains so even in the absence of
	// connection requests.
	// NEVER: The instance is off; it is not activated, even if a connection
	// request arrives.
	// ON_DEMAND: First Generation instances only. The instance responds to
	// incoming requests, and turns itself off when not in use. Instances
	// with PER_USE pricing turn off after 15 minutes of inactivity.
	// Instances with PER_PACKAGE pricing turn off after 12 hours of
	// inactivity.
	// +optional
	activationPolicy?: null | string @go(ActivationPolicy,*string)

	// AuthorizedGaeApplications: The App Engine app IDs that can access
	// this instance. First Generation instances only.
	// +optional
	authorizedGaeApplications?: [...string] @go(AuthorizedGaeApplications,[]string)

	// AvailabilityType: Availability type (PostgreSQL instances only).
	// Potential values:
	// ZONAL: The instance serves data from only one zone. Outages in that
	// zone affect data accessibility.
	// REGIONAL: The instance can serve data from more than one zone in a
	// region (it is highly available).
	// For more information, see Overview of the High Availability
	// Configuration.
	// +optional
	availabilityType?: null | string @go(AvailabilityType,*string)

	// CrashSafeReplicationEnabled: Configuration specific to read replica
	// instances. Indicates whether database flags for crash-safe
	// replication are enabled. This property is only applicable to First
	// Generation instances.
	// +optional
	crashSafeReplicationEnabled?: null | bool @go(CrashSafeReplicationEnabled,*bool)

	// StorageAutoResize: Configuration to increase storage size
	// automatically. The default value is true. Not used for First
	// Generation instances.
	// Please note, if storage auto resize enabled, it won't be possible to
	// decrease the size of the database using the DataDiskSizeGb field as it is
	// not an allowed operation on GCP side. But you would still be able to
	// increase it.
	// +optional
	storageAutoResize?: null | bool @go(StorageAutoResize,*bool)

	// DataDiskType: The type of data disk: PD_SSD (default) or PD_HDD. Not
	// used for First Generation instances.
	// +optional
	dataDiskType?: null | string @go(DataDiskType,*string)

	// PricingPlan: The pricing plan for this instance. This can be either
	// PER_USE or PACKAGE. Only PER_USE is supported for Second Generation
	// instances.
	// +optional
	pricingPlan?: null | string @go(PricingPlan,*string)

	// ReplicationType: The type of replication this instance uses. This can
	// be either ASYNCHRONOUS or SYNCHRONOUS. This property is only
	// applicable to First Generation instances.
	// +optional
	replicationType?: null | string @go(ReplicationType,*string)

	// UserLabels: User-provided labels, represented as a dictionary where
	// each label is a single key value pair.
	// +optional
	userLabels?: {[string]: string} @go(UserLabels,map[string]string)

	// DatabaseFlags is the array of database flags passed to the instance at
	// startup.
	// +optional
	databaseFlags?: [...null | #DatabaseFlags] @go(DatabaseFlags,[]*DatabaseFlags)

	// BackupConfiguration is the daily backup configuration for the instance.
	// +optional
	backupConfiguration?: null | #BackupConfiguration @go(BackupConfiguration,*BackupConfiguration)

	// IPConfiguration: The settings for IP Management. This allows to
	// enable or disable the instance IP and manage which external networks
	// can connect to the instance. The IPv4 address cannot be disabled for
	// Second Generation instances.
	// +optional
	ipConfiguration?: null | #IPConfiguration @go(IPConfiguration,*IPConfiguration)

	// LocationPreference is the location preference settings. This allows the
	// instance to be located as near as possible to either an App Engine
	// app or Compute Engine zone for better performance. App Engine
	// co-location is only applicable to First Generation instances.
	// +optional
	locationPreference?: null | #LocationPreference @go(LocationPreference,*LocationPreference)

	// MaintenanceWindow: The maintenance window for this instance. This
	// specifies when the instance can be restarted for maintenance
	// purposes. Not used for First Generation instances.
	// +optional
	maintenanceWindow?: null | #MaintenanceWindow @go(MaintenanceWindow,*MaintenanceWindow)

	// DataDiskSizeGb: The size of data disk, in GB. The data disk size
	// minimum is 10GB. Not used for First Generation instances.
	// Please note, if storage auto resize enabled, it won't be possible to
	// decrease the size of the database using this field as it is
	// not an allowed operation on GCP side. But you would still be able to
	// increase it.
	// +optional
	dataDiskSizeGb?: null | int64 @go(DataDiskSizeGb,*int64)

	// DatabaseReplicationEnabled: Configuration specific to read replica
	// instances. Indicates whether replication is enabled or not.
	// +optional
	databaseReplicationEnabled?: null | bool @go(DatabaseReplicationEnabled,*bool)

	// StorageAutoResizeLimit: The maximum size to which storage capacity
	// can be automatically increased. The default value is 0, which
	// specifies that there is no limit. Not used for First Generation
	// instances.
	// +optional
	storageAutoResizeLimit?: null | int64 @go(StorageAutoResizeLimit,*int64)
}

// LocationPreference is preferred location. This specifies where a Cloud
// SQL instance should preferably be located, either in a specific
// Compute Engine zone, or co-located with an App Engine application.
// Note that if the preferred location is not available, the instance
// will be located as close as possible within the region. Only one
// location may be specified.
#LocationPreference: {
	// FollowGaeApplication: The AppEngine application to follow, it must be
	// in the same region as the Cloud SQL instance.
	// +optional
	followGaeApplication?: null | string @go(FollowGaeApplication,*string)

	// Zone: The preferred Compute Engine zone (e.g. us-central1-a,
	// us-central1-b, etc.).
	// +optional
	zone?: null | string @go(Zone,*string)
}

// MaintenanceWindow specifies when a v2 Cloud SQL instance should preferably
// be restarted for system maintenance purposes.
#MaintenanceWindow: {
	// Day: day of week (1-7), starting on Monday.
	// +optional
	day?: null | int64 @go(Day,*int64)

	// Hour: hour of day - 0 to 23.
	// +optional
	hour?: null | int64 @go(Hour,*int64)

	// UpdateTrack: Maintenance timing setting: canary (Earlier) or stable
	// (Later).
	// +optional
	updateTrack?: null | string @go(UpdateTrack,*string)
}

// BackupConfiguration is database instance backup configuration.
#BackupConfiguration: {
	// BackupRetentionSettings: Backup retention settings.
	// +optional
	backupRetentionSettings?: null | #BackupRetentionSettings @go(BackupRetentionSettings,*BackupRetentionSettings)

	// BinaryLogEnabled: Whether binary log is enabled. If backup
	// configuration is disabled, binary log must be disabled as well.
	// +optional
	binaryLogEnabled?: null | bool @go(BinaryLogEnabled,*bool)

	// Enabled: Whether this configuration is enabled.
	// +optional
	enabled?: null | bool @go(Enabled,*bool)

	// Location: The location of the backup.
	// +optional
	location?: null | string @go(Location,*string)

	// ReplicationLogArchivingEnabled: Reserved for future use.
	// +optional
	replicationLogArchivingEnabled?: null | bool @go(ReplicationLogArchivingEnabled,*bool)

	// StartTime: Start time for the daily backup configuration in UTC
	// timezone in the 24 hour format - HH:MM.
	// +optional
	startTime?: null | string @go(StartTime,*string)

	// PointInTimeRecoveryEnabled: True if Point-in-time recovery is enabled.
	// Will restart database if enabled after instance creation.
	// +optional
	pointInTimeRecoveryEnabled?: null | bool @go(PointInTimeRecoveryEnabled,*bool)
}

// BackupRetentionSettings configures the number of backups to retain.
#BackupRetentionSettings: {
	// RetainedBackups: Depending on the value of retention_unit, this is
	// used to determine if a backup needs to be deleted. If retention_unit
	// is 'COUNT', we will retain this many backups.
	// +optional
	retainedBackups?: null | int64 @go(RetainedBackups,*int64)

	// RetentionUnit: The unit that 'retained_backups' represents.
	//
	// Possible values:
	//   "RETENTION_UNIT_UNSPECIFIED" - Backup retention unit is
	// unspecified, will be treated as COUNT.
	//   "COUNT" - Retention will be by count, eg. "retain the most recent 7
	// backups".
	// +kubebuilder:validation:Enum=RETENTION_UNIT_UNSPECIFIED;COUNT
	// +optional
	retentionUnit?: null | string @go(RetentionUnit,*string)
}

// DatabaseFlags are database flags for Cloud SQL instances.
#DatabaseFlags: {
	// Name: The name of the flag. These flags are passed at instance
	// startup, so include both server options and system variables for
	// MySQL. Flags should be specified with underscores, not hyphens. For
	// more information, see Configuring Database Flags in the Cloud SQL
	// documentation.
	name: string @go(Name)

	// Value: The value of the flag. Booleans should be set to on for true
	// and off for false. This field must be omitted if the flag doesn't
	// take a value.
	value: string @go(Value)
}

// IPConfiguration is the IP Management configuration.
#IPConfiguration: {
	// AuthorizedNetworks: The list of external networks that are allowed to
	// connect to the instance using the IP. In CIDR notation, also known as
	// 'slash' notation (e.g. 192.168.100.0/24).
	// +optional
	authorizedNetworks?: [...null | #ACLEntry] @go(AuthorizedNetworks,[]*ACLEntry)

	// Ipv4Enabled: Whether the instance should be assigned an IP address or
	// not.
	// +optional
	ipv4Enabled?: null | bool @go(Ipv4Enabled,*bool)

	// PrivateNetwork: The resource link for the VPC network from which the
	// Cloud SQL instance is accessible for private IP. For example,
	// projects/myProject/global/networks/default. This setting can be updated,
	// but it cannot be removed after it is set. The Network must have an active
	// Service Networking connection peering before resolution will proceed.
	// https://cloud.google.com/vpc/docs/configure-private-services-access
	// +optional
	// +kubebuilder:validation:Pattern=^projects\/.+
	privateNetwork?: null | string @go(PrivateNetwork,*string)

	// RequireSsl: Whether SSL connections over IP should be enforced or
	// not.
	// +optional
	requireSsl?: null | bool @go(RequireSsl,*bool)
}

// ACLEntry is an entry for an Access Control list.
#ACLEntry: {
	// ExpirationTime: The time when this access control entry expires in
	// RFC 3339 format, for example 2012-11-15T16:19:00.094Z.
	// +optional
	expirationTime?: null | string @go(ExpirationTime,*string)

	// Name: An optional label to identify this entry.
	// +optional
	name?: null | string @go(Name,*string)

	// Value: The whitelisted value for the access control list.
	// +optional
	value?: null | string @go(Value,*string)
}

// OnPremisesConfiguration is on-premises instance configuration.
#OnPremisesConfiguration: {
	// HostPort: The host and port of the on-premises instance in host:port
	// format
	hostPort: string @go(HostPort)
}

// CloudSQLInstanceObservation is used to show the observed state of the Cloud SQL resource on GCP.
#CloudSQLInstanceObservation: {
	// BackendType: FIRST_GEN: First Generation instance. MySQL
	// only.
	// SECOND_GEN: Second Generation instance or PostgreSQL
	// instance.
	// EXTERNAL: A database server that is not managed by Google.
	// This property is read-only; use the tier property in the settings
	// object to determine the database type and Second or First Generation.
	backendType?: string @go(BackendType)

	// CurrentDiskSize: The current disk usage of the instance in bytes.
	// This property has been deprecated. Users should use the
	// "cloudsql.googleapis.com/database/disk/bytes_used" metric in Cloud
	// Monitoring API instead. Please see this announcement for details.
	currentDiskSize?: int64 @go(CurrentDiskSize)

	// ConnectionName: Connection name of the Cloud SQL instance used in
	// connection strings.
	connectionName?: string @go(ConnectionName)

	// DiskEncryptionStatus: Disk encryption status specific to an instance.
	// Applies only to Second Generation instances.
	diskEncryptionStatus?: null | #DiskEncryptionStatus @go(DiskEncryptionStatus,*DiskEncryptionStatus)

	// FailoverReplica: The name and status of the failover replica. This
	// property is applicable only to Second Generation instances.
	failoverReplica?: null | #DatabaseInstanceFailoverReplicaStatus @go(FailoverReplica,*DatabaseInstanceFailoverReplicaStatus)

	// GceZone: The Compute Engine zone that the instance is currently
	// serving from. This value could be different from the zone that was
	// specified when the instance was created if the instance has failed
	// over to its secondary zone.
	gceZone?: string @go(GceZone)

	// IPAddresses: The assigned IP addresses for the instance.
	ipAddresses?: [...null | #IPMapping] @go(IPAddresses,[]*IPMapping)

	// IPv6Address: The IPv6 address assigned to the instance. This property
	// is applicable only to First Generation instances.
	ipv6Address?: string @go(IPv6Address)

	// Project: The project ID of the project containing the Cloud SQL
	// instance. The Google apps domain is prefixed if applicable.
	project?: string @go(Project)

	// SelfLink: The URI of this resource.
	selfLink?: string @go(SelfLink)

	// ServiceAccountEmailAddress: The service account email address
	// assigned to the instance. This property is applicable only to Second
	// Generation instances.
	serviceAccountEmailAddress?: string @go(ServiceAccountEmailAddress)

	// State: The current serving state of the Cloud SQL instance. This can
	// be one of the following.
	// RUNNABLE: The instance is running, or is ready to run when
	// accessed.
	// SUSPENDED: The instance is not available, for example due to problems
	// with billing.
	// PENDING_CREATE: The instance is being created.
	// MAINTENANCE: The instance is down for maintenance.
	// FAILED: The instance creation failed.
	// UNKNOWN_STATE: The state of the instance is unknown.
	state?: string @go(State)

	// SettingsVersion: The version of instance settings. This is a required
	// field for update method to make sure concurrent updates are handled
	// properly. During update, use the most recent settingsVersion value
	// for this instance and do not try to update this value.
	settingsVersion?: int64 @go(SettingsVersion)
}

// IPMapping is database instance IP Mapping.
#IPMapping: {
	// IPAddress: The IP address assigned.
	ipAddress?: string @go(IPAddress)

	// TimeToRetire: The due time for this IP to be retired in RFC 3339
	// format, for example 2012-11-15T16:19:00.094Z. This field is only
	// available when the IP is scheduled to be retired.
	timeToRetire?: string @go(TimeToRetire)

	// Type: The type of this IP address. A PRIMARY address is a public
	// address that can accept incoming connections. A PRIVATE address is a
	// private address that can accept incoming connections. An OUTGOING
	// address is the source address of connections originating from the
	// instance, if supported.
	type?: string @go(Type)
}

// DiskEncryptionConfiguration is disk encryption configuration.
#DiskEncryptionConfiguration: {
	// KmsKeyName: KMS key resource name
	kmsKeyName: string @go(KmsKeyName)
}

// DiskEncryptionStatus is disk encryption status.
#DiskEncryptionStatus: {
	// KmsKeyVersionName: KMS key version used to encrypt the Cloud SQL
	// instance disk
	kmsKeyVersionName: string @go(KmsKeyVersionName)
}

// DatabaseInstanceFailoverReplicaSpec is where you can specify a name
// for the failover replica.
#DatabaseInstanceFailoverReplicaSpec: {
	// Name: The name of the failover replica. If specified at instance
	// creation, a failover replica is created for the instance. The name
	// doesn't include the project ID. This property is applicable only to
	// Second Generation instances.
	name: string @go(Name)
}

// DatabaseInstanceFailoverReplicaStatus is status of the failover
// replica.
#DatabaseInstanceFailoverReplicaStatus: {
	// Available: The availability status of the failover replica. A false
	// status indicates that the failover replica is out of sync. The master
	// can only failover to the failover replica when the status is true.
	available: bool @go(Available)
}

// A CloudSQLInstanceSpec defines the desired state of a CloudSQLInstance.
#CloudSQLInstanceSpec: {
	forProvider: #CloudSQLInstanceParameters @go(ForProvider)
}

// A CloudSQLInstanceStatus represents the observed state of a CloudSQLInstance.
#CloudSQLInstanceStatus: {
	atProvider?: #CloudSQLInstanceObservation @go(AtProvider)
}

// A CloudSQLInstance is a managed resource that represents a Google CloudSQL
// instance.
// +kubebuilder:subresource:status
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="STATE",type="string",JSONPath=".status.atProvider.state"
// +kubebuilder:printcolumn:name="VERSION",type="string",JSONPath=".spec.forProvider.databaseVersion"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#CloudSQLInstance: {
	spec:    #CloudSQLInstanceSpec   @go(Spec)
	status?: #CloudSQLInstanceStatus @go(Status)
}

// CloudSQLInstanceList contains a list of CloudSQLInstance
#CloudSQLInstanceList: {
	items: [...#CloudSQLInstance] @go(Items,[]CloudSQLInstance)
}
