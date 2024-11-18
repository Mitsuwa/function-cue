// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/rds/v1beta1

package v1beta1

#BlueGreenUpdateObservation: {
}

#BlueGreenUpdateParameters: {
	// Enables [low-downtime updates](#Low-Downtime Updates) when true.
	// Default is false.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)
}

#InstanceObservation: {
	// The hostname of the RDS instance. See also endpoint and port.
	address?: null | string @go(Address,*string)

	// The ARN of the RDS instance.
	arn?: null | string @go(Arn,*string)

	// The connection endpoint in address:port format.
	endpoint?: null | string @go(Endpoint,*string)

	// The running version of the database.
	engineVersionActual?: null | string @go(EngineVersionActual,*string)

	// The canonical hosted zone ID of the DB instance (to be used
	// in a Route 53 Alias record).
	hostedZoneId?: null | string @go(HostedZoneID,*string)

	// The RDS instance ID.
	id?: null | string @go(ID,*string)

	// The latest time, in UTC RFC3339 format, to which a database can be restored with point-in-time restore.
	latestRestorableTime?: null | string @go(LatestRestorableTime,*string)
	replicas?: [...null | string] @go(Replicas,[]*string)

	// The RDS Resource ID of this instance.
	resourceId?: null | string @go(ResourceID,*string)

	// The RDS instance status.
	status?: null | string @go(Status,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#InstanceParameters: {
	// The allocated storage in gibibytes. If max_allocated_storage is configured, this argument represents the initial storage allocation and differences from the configuration will be ignored automatically when Storage Autoscaling occurs. If replicate_source_db is set, the value is ignored during the creation of the instance.
	// +kubebuilder:validation:Optional
	allocatedStorage?: null | float64 @go(AllocatedStorage,*float64)

	// Indicates that major version
	// upgrades are allowed. Changing this parameter does not result in an outage and
	// the change is asynchronously applied as soon as possible.
	// +kubebuilder:validation:Optional
	allowMajorVersionUpgrade?: null | bool @go(AllowMajorVersionUpgrade,*bool)

	// Specifies whether any database modifications
	// are applied immediately, or during the next maintenance window. Default is
	// false. See Amazon RDS Documentation for more
	// information.
	// +kubebuilder:validation:Optional
	applyImmediately?: null | bool @go(ApplyImmediately,*bool)

	// Password for the master DB user. Note that this may show up in
	// logs, and it will be stored in the state file.
	// If true, the password will be auto-generated and stored in the Secret referenced by the passwordSecretRef field.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Optional
	autoGeneratePassword?: null | bool @go(AutoGeneratePassword,*bool)

	// Indicates that minor engine upgrades
	// will be applied automatically to the DB instance during the maintenance window.
	// Defaults to true.
	// +kubebuilder:validation:Optional
	autoMinorVersionUpgrade?: null | bool @go(AutoMinorVersionUpgrade,*bool)

	// The AZ for the RDS instance.
	// +kubebuilder:validation:Optional
	availabilityZone?: null | string @go(AvailabilityZone,*string)

	// The days to retain backups for.
	// Must be between 0 and 35.
	// Default is 0.
	// Must be greater than 0 if the database is used as a source for a Read Replica,
	// uses low-downtime updates,
	// or will use RDS Blue/Green deployments.
	// +kubebuilder:validation:Optional
	backupRetentionPeriod?: null | float64 @go(BackupRetentionPeriod,*float64)

	// The daily time range (in UTC) during which automated backups are created if they are enabled.
	// Example: "09:46-10:16". Must not overlap with maintenance_window.
	// +kubebuilder:validation:Optional
	backupWindow?: null | string @go(BackupWindow,*string)

	// Enables low-downtime updates using RDS Blue/Green deployments.
	// See blue_green_update below
	// +kubebuilder:validation:Optional
	blueGreenUpdate?: [...#BlueGreenUpdateParameters] @go(BlueGreenUpdate,[]BlueGreenUpdateParameters)

	// The identifier of the CA certificate for the DB instance.
	// +kubebuilder:validation:Optional
	caCertIdentifier?: null | string @go(CACertIdentifier,*string)

	// The character set name to use for DB
	// encoding in Oracle and Microsoft SQL instances (collation). This can't be changed. See Oracle Character Sets
	// Supported in Amazon RDS
	// or Server-Level Collation for Microsoft SQL Server for more information.
	// +kubebuilder:validation:Optional
	characterSetName?: null | string @go(CharacterSetName,*string)

	// –  Copy all Instance tags to snapshots. Default is false.
	// +kubebuilder:validation:Optional
	copyTagsToSnapshot?: null | bool @go(CopyTagsToSnapshot,*bool)

	// The instance profile associated with the underlying Amazon EC2 instance of an RDS Custom DB instance.
	// +kubebuilder:validation:Optional
	customIamInstanceProfile?: null | string @go(CustomIAMInstanceProfile,*string)

	// Indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance. See CoIP for RDS on Outposts for more information.
	// +kubebuilder:validation:Optional
	customerOwnedIpEnabled?: null | bool @go(CustomerOwnedIPEnabled,*bool)

	// The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance. Note that this does not apply for Oracle or SQL Server engines. See the AWS documentation for more details on what applies for those engines. If you are providing an Oracle db name, it needs to be in all upper case. Cannot be specified for a replica.
	// +kubebuilder:validation:Optional
	dbName?: null | string @go(DBName,*string)

	// Name of DB subnet group. DB instance will
	// be created in the VPC associated with the DB subnet group. If unspecified, will
	// be created in the default VPC, or in EC2 Classic, if available. When working
	// with read replicas, it should be specified only if the source database
	// specifies an instance in another AWS Region. See DBSubnetGroupName in API
	// action CreateDBInstanceReadReplica
	// for additional read replica contraints.
	// +crossplane:generate:reference:type=SubnetGroup
	// +kubebuilder:validation:Optional
	dbSubnetGroupName?: null | string @go(DBSubnetGroupName,*string)

	// Specifies whether to remove automated backups immediately after the DB instance is deleted. Default is true.
	// +kubebuilder:validation:Optional
	deleteAutomatedBackups?: null | bool @go(DeleteAutomatedBackups,*bool)

	// If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to true. The default is false.
	// +kubebuilder:validation:Optional
	deletionProtection?: null | bool @go(DeletionProtection,*bool)

	// The ID of the Directory Service Active Directory domain to create the instance in.
	// +kubebuilder:validation:Optional
	domain?: null | string @go(Domain,*string)

	// The name of the IAM role to be used when making API calls to the Directory Service.
	// +kubebuilder:validation:Optional
	domainIamRoleName?: null | string @go(DomainIAMRoleName,*string)

	// Set of log types to enable for exporting to CloudWatch logs. If omitted, no logs will be exported. Valid values (depending on engine). MySQL and MariaDB: audit, error, general, slowquery. PostgreSQL: postgresql, upgrade. MSSQL: agent , error. Oracle: alert, audit, listener, trace.
	// +kubebuilder:validation:Optional
	enabledCloudwatchLogsExports?: [...null | string] @go(EnabledCloudwatchLogsExports,[]*string)

	// The database engine to use.  For supported values, see the Engine parameter in API action CreateDBInstance. Cannot be specified for a replica.
	// Note that for Amazon Aurora instances the engine must match the DB cluster's engine'.
	// For information on the difference between the available Aurora MySQL engines
	// see Comparison between Aurora MySQL 1 and Aurora MySQL 2
	// in the Amazon RDS User Guide.
	// +kubebuilder:validation:Optional
	engine?: null | string @go(Engine,*string)

	// The engine version to use. If auto_minor_version_upgrade
	// is enabled, you can provide a prefix of the version such as 5.7 (for 5.7.10).
	// The actual engine version used is returned in the attribute engine_version_actual, see Attributes Reference below.
	// For supported values, see the EngineVersion parameter in API action CreateDBInstance.
	// Note that for Amazon Aurora instances the engine version must match the DB cluster's engine version'. Cannot be specified for a replica.
	// +kubebuilder:validation:Optional
	engineVersion?: null | string @go(EngineVersion,*string)

	// The name of your final DB snapshot
	// when this DB instance is deleted. Must be provided if skip_final_snapshot is
	// set to false. The value must begin with a letter, only contain alphanumeric characters and hyphens, and not end with a hyphen or contain two consecutive hyphens. Must not be provided when deleting a read replica.
	// +kubebuilder:validation:Optional
	finalSnapshotIdentifier?: null | string @go(FinalSnapshotIdentifier,*string)

	// Specifies whether mappings of AWS Identity and Access Management (IAM) accounts to database
	// accounts is enabled.
	// +kubebuilder:validation:Optional
	iamDatabaseAuthenticationEnabled?: null | bool @go(IAMDatabaseAuthenticationEnabled,*bool)

	// The instance type of the RDS instance.
	// +kubebuilder:validation:Required
	instanceClass?: null | string @go(InstanceClass,*string)

	// The amount of provisioned IOPS. Setting this implies a
	// storage_type of "io1". Can only be set when storage_type is "io1" or "gp3".
	// Cannot be specified for gp3 storage if the allocated_storage value is below a per-engine threshold.
	// See the RDS User Guide for details.
	// +kubebuilder:validation:Optional
	iops?: null | float64 @go(Iops,*float64)

	// The ARN for the KMS encryption key. If creating an
	// encrypted replica, set this to the destination KMS ARN.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/kms/v1beta1.Key
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	kmsKeyId?: null | string @go(KMSKeyID,*string)

	// License model information for this DB instance.
	// +kubebuilder:validation:Optional
	licenseModel?: null | string @go(LicenseModel,*string)

	// The window to perform maintenance in.
	// Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00". See RDS
	// Maintenance Window
	// docs
	// for more information.
	// +kubebuilder:validation:Optional
	maintenanceWindow?: null | string @go(MaintenanceWindow,*string)

	// When configured, the upper limit to which Amazon RDS can automatically scale the storage of the DB instance. Configuring this will automatically ignore differences to allocated_storage. Must be greater than or equal to allocated_storage or 0 to disable Storage Autoscaling.
	// +kubebuilder:validation:Optional
	maxAllocatedStorage?: null | float64 @go(MaxAllocatedStorage,*float64)

	// The interval, in seconds, between points
	// when Enhanced Monitoring metrics are collected for the DB instance. To disable
	// collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid
	// Values: 0, 1, 5, 10, 15, 30, 60.
	// +kubebuilder:validation:Optional
	monitoringInterval?: null | float64 @go(MonitoringInterval,*float64)

	// The ARN for the IAM role that permits RDS
	// to send enhanced monitoring metrics to CloudWatch Logs. You can find more
	// information on the AWS
	// Documentation
	// what IAM permissions are needed to allow Enhanced Monitoring for RDS Instances.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	monitoringRoleArn?: null | string @go(MonitoringRoleArn,*string)

	// Specifies if the RDS instance is multi-AZ
	// +kubebuilder:validation:Optional
	multiAz?: null | bool @go(MultiAz,*bool)

	// The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance. Note that this does not apply for Oracle or SQL Server engines. See the AWS documentation for more details on what applies for those engines. If you are providing an Oracle db name, it needs to be in all upper case. Cannot be specified for a replica.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The national character set is used in the NCHAR, NVARCHAR2, and NCLOB data types for Oracle instances. This can't be changed. See Oracle Character Sets
	// Supported in Amazon RDS.
	// +kubebuilder:validation:Optional
	ncharCharacterSetName?: null | string @go(NcharCharacterSetName,*string)

	// The network type of the DB instance. Valid values: IPV4, DUAL.
	// +kubebuilder:validation:Optional
	networkType?: null | string @go(NetworkType,*string)

	// Name of the DB option group to associate.
	// +kubebuilder:validation:Optional
	optionGroupName?: null | string @go(OptionGroupName,*string)

	// Name of the DB parameter group to
	// associate.
	// +kubebuilder:validation:Optional
	parameterGroupName?: null | string @go(ParameterGroupName,*string)

	// Specifies whether Performance Insights are enabled. Defaults to false.
	// +kubebuilder:validation:Optional
	performanceInsightsEnabled?: null | bool @go(PerformanceInsightsEnabled,*bool)

	// The ARN for the KMS key to encrypt Performance Insights data. When specifying performance_insights_kms_key_id, performance_insights_enabled needs to be set to true. Once KMS key is set, it can never be changed.
	// +kubebuilder:validation:Optional
	performanceInsightsKmsKeyId?: null | string @go(PerformanceInsightsKMSKeyID,*string)

	// Amount of time in days to retain Performance Insights data. Valid values are 7, 731 (2 years) or a multiple of 31. When specifying performance_insights_retention_period, performance_insights_enabled needs to be set to true. Defaults to '7'.
	// +kubebuilder:validation:Optional
	performanceInsightsRetentionPeriod?: null | float64 @go(PerformanceInsightsRetentionPeriod,*float64)

	// The port on which the DB accepts connections.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// Bool to control if instance is publicly
	// accessible. Default is false.
	// +kubebuilder:validation:Optional
	publiclyAccessible?: null | bool @go(PubliclyAccessible,*bool)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Specifies whether the replica is in either mounted or open-read-only mode. This attribute
	// is only supported by Oracle instances. Oracle replicas operate in open-read-only mode unless otherwise specified. See Working with Oracle Read Replicas for more information.
	// +kubebuilder:validation:Optional
	replicaMode?: null | string @go(ReplicaMode,*string)

	// Specifies that this resource is a Replicate
	// database, and to use this value as the source database. This correlates to the
	// identifier of another Amazon RDS Database to replicate (if replicating within
	// a single region) or ARN of the Amazon RDS Database to replicate (if replicating
	// cross-region). Note that if you are
	// creating a cross-region replica of an encrypted database you will also need to
	// specify a kms_key_id. See DB Instance Replication and Working with
	// PostgreSQL and MySQL Read Replicas
	// for more information on using Replication.
	// +kubebuilder:validation:Optional
	replicateSourceDb?: null | string @go(ReplicateSourceDB,*string)

	// A configuration block for restoring a DB instance to an arbitrary point in time. Requires the identifier argument to be set with the name of the new DB instance to be created. See Restore To Point In Time below for details.
	// +kubebuilder:validation:Optional
	restoreToPointInTime?: [...#RestoreToPointInTimeParameters] @go(RestoreToPointInTime,[]RestoreToPointInTimeParameters)

	// Restore from a Percona Xtrabackup in S3.  See Importing Data into an Amazon RDS MySQL DB Instance
	// +kubebuilder:validation:Optional
	s3Import?: [...#S3ImportParameters] @go(S3Import,[]S3ImportParameters)

	// List of DB Security Groups to
	// associate. Only used for DB Instances on the .
	// +kubebuilder:validation:Optional
	securityGroupNames?: [...null | string] @go(SecurityGroupNames,[]*string)

	// Determines whether a final DB snapshot is
	// created before the DB instance is deleted. If true is specified, no DBSnapshot
	// is created. If false is specified, a DB snapshot is created before the DB
	// instance is deleted, using the value from final_snapshot_identifier. Default
	// is false.
	// +kubebuilder:validation:Optional
	skipFinalSnapshot?: null | bool @go(SkipFinalSnapshot,*bool)

	// Specifies whether or not to create this
	// database from a snapshot. This correlates to the snapshot ID you'd find in the
	// RDS console, e.g: rds:production-2015-06-26-06-05.
	// +kubebuilder:validation:Optional
	snapshotIdentifier?: null | string @go(SnapshotIdentifier,*string)

	// Specifies whether the DB instance is
	// encrypted. Note that if you are creating a cross-region read replica this field
	// is ignored and you should instead declare kms_key_id with a valid ARN. The
	// default is false if not specified.
	// +kubebuilder:validation:Optional
	storageEncrypted?: null | bool @go(StorageEncrypted,*bool)

	// The storage throughput value for the DB instance. Can only be set when storage_type is "gp3". Cannot be specified if the allocated_storage value is below a per-engine threshold. See the RDS User Guide for details.
	// +kubebuilder:validation:Optional
	storageThroughput?: null | float64 @go(StorageThroughput,*float64)

	// One of "standard" (magnetic), "gp2" (general
	// purpose SSD), "gp3" (general purpose SSD that needs iops independently)
	// or "io1" (provisioned IOPS SSD). The default is "io1" if iops is specified,
	// "gp2" if not.
	// +kubebuilder:validation:Optional
	storageType?: null | string @go(StorageType,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Time zone of the DB instance. timezone is currently
	// only supported by Microsoft SQL Server. The timezone can only be set on
	// creation. See MSSQL User
	// Guide
	// for more information.
	// +kubebuilder:validation:Optional
	timezone?: null | string @go(Timezone,*string)

	// Username for the master DB user. Cannot be specified for a replica.
	// +kubebuilder:validation:Optional
	username?: null | string @go(Username,*string)

	// List of VPC security groups to
	// associate.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.SecurityGroup
	// +crossplane:generate:reference:refFieldName=VPCSecurityGroupIDRefs
	// +crossplane:generate:reference:selectorFieldName=VPCSecurityGroupIDSelector
	// +kubebuilder:validation:Optional
	vpcSecurityGroupIds?: [...null | string] @go(VPCSecurityGroupIds,[]*string)
}

#RestoreToPointInTimeObservation: {
}

#RestoreToPointInTimeParameters: {
	// The date and time to restore from. Value must be a time in Universal Coordinated Time (UTC) format and must be before the latest restorable time for the DB instance. Cannot be specified with use_latest_restorable_time.
	// +kubebuilder:validation:Optional
	restoreTime?: null | string @go(RestoreTime,*string)

	// The ARN of the automated backup from which to restore. Required if source_db_instance_identifier or source_dbi_resource_id is not specified.
	// +kubebuilder:validation:Optional
	sourceDbInstanceAutomatedBackupsArn?: null | string @go(SourceDBInstanceAutomatedBackupsArn,*string)

	// The identifier of the source DB instance from which to restore. Must match the identifier of an existing DB instance. Required if source_db_instance_automated_backups_arn or source_dbi_resource_id is not specified.
	// +kubebuilder:validation:Optional
	sourceDbInstanceIdentifier?: null | string @go(SourceDBInstanceIdentifier,*string)

	// The resource ID of the source DB instance from which to restore. Required if source_db_instance_identifier or source_db_instance_automated_backups_arn is not specified.
	// +kubebuilder:validation:Optional
	sourceDbiResourceId?: null | string @go(SourceDbiResourceID,*string)

	// A boolean value that indicates whether the DB instance is restored from the latest backup time. Defaults to false. Cannot be specified with restore_time.
	// +kubebuilder:validation:Optional
	useLatestRestorableTime?: null | bool @go(UseLatestRestorableTime,*bool)
}

#S3ImportObservation: {
}

#S3ImportParameters: {
	// The bucket name where your backup is stored
	// +kubebuilder:validation:Required
	bucketName?: null | string @go(BucketName,*string)

	// Can be blank, but is the path to your backup
	// +kubebuilder:validation:Optional
	bucketPrefix?: null | string @go(BucketPrefix,*string)

	// Role applied to load the data.
	// +kubebuilder:validation:Required
	ingestionRole?: null | string @go(IngestionRole,*string)

	// Source engine for the backup
	// +kubebuilder:validation:Required
	sourceEngine?: null | string @go(SourceEngine,*string)

	// Version of the source engine used to make the backup
	// +kubebuilder:validation:Required
	sourceEngineVersion?: null | string @go(SourceEngineVersion,*string)
}

// InstanceSpec defines the desired state of Instance
#InstanceSpec: {
	forProvider: #InstanceParameters @go(ForProvider)
}

// InstanceStatus defines the observed state of Instance.
#InstanceStatus: {
	atProvider?: #InstanceObservation @go(AtProvider)
}

// Instance is the Schema for the Instances API. Provides an RDS instance resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Instance: {
	spec:    #InstanceSpec   @go(Spec)
	status?: #InstanceStatus @go(Status)
}

// InstanceList contains a list of Instances
#InstanceList: {
	items: [...#Instance] @go(Items,[]Instance)
}
