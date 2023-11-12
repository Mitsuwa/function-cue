// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/opensearch/v1beta1

package v1beta1

#AdvancedSecurityOptionsObservation: {
	// Whether Anonymous auth is enabled. Enables fine-grained access control on an existing domain. Ignored unless advanced_security_options are enabled. Can only be enabled on an existing domain.
	anonymousAuthEnabled?: null | bool @go(AnonymousAuthEnabled,*bool)

	// Whether advanced security is enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// Whether the internal user database is enabled. Default is false.
	internalUserDatabaseEnabled?: null | bool @go(InternalUserDatabaseEnabled,*bool)

	// Configuration block for the main user. Detailed below.
	masterUserOptions?: [...#MasterUserOptionsObservation] @go(MasterUserOptions,[]MasterUserOptionsObservation)
}

#AdvancedSecurityOptionsParameters: {
	// Whether Anonymous auth is enabled. Enables fine-grained access control on an existing domain. Ignored unless advanced_security_options are enabled. Can only be enabled on an existing domain.
	// +kubebuilder:validation:Optional
	anonymousAuthEnabled?: null | bool @go(AnonymousAuthEnabled,*bool)

	// Whether advanced security is enabled.
	// +kubebuilder:validation:Required
	enabled?: null | bool @go(Enabled,*bool)

	// Whether the internal user database is enabled. Default is false.
	// +kubebuilder:validation:Optional
	internalUserDatabaseEnabled?: null | bool @go(InternalUserDatabaseEnabled,*bool)

	// Configuration block for the main user. Detailed below.
	// +kubebuilder:validation:Optional
	masterUserOptions?: [...#MasterUserOptionsParameters] @go(MasterUserOptions,[]MasterUserOptionsParameters)
}

#AutoTuneOptionsObservation: {
	// Auto-Tune desired state for the domain. Valid values: ENABLED or DISABLED.
	desiredState?: null | string @go(DesiredState,*string)

	// Configuration block for Auto-Tune maintenance windows. Can be specified multiple times for each maintenance window. Detailed below.
	maintenanceSchedule?: [...#MaintenanceScheduleObservation] @go(MaintenanceSchedule,[]MaintenanceScheduleObservation)

	// Whether to roll back to default Auto-Tune settings when disabling Auto-Tune. Valid values: DEFAULT_ROLLBACK or NO_ROLLBACK.
	rollbackOnDisable?: null | string @go(RollbackOnDisable,*string)
}

#AutoTuneOptionsParameters: {
	// Auto-Tune desired state for the domain. Valid values: ENABLED or DISABLED.
	// +kubebuilder:validation:Required
	desiredState?: null | string @go(DesiredState,*string)

	// Configuration block for Auto-Tune maintenance windows. Can be specified multiple times for each maintenance window. Detailed below.
	// +kubebuilder:validation:Optional
	maintenanceSchedule?: [...#MaintenanceScheduleParameters] @go(MaintenanceSchedule,[]MaintenanceScheduleParameters)

	// Whether to roll back to default Auto-Tune settings when disabling Auto-Tune. Valid values: DEFAULT_ROLLBACK or NO_ROLLBACK.
	// +kubebuilder:validation:Optional
	rollbackOnDisable?: null | string @go(RollbackOnDisable,*string)
}

#ClusterConfigObservation: {
	// Configuration block containing cold storage configuration. Detailed below.
	coldStorageOptions?: [...#ColdStorageOptionsObservation] @go(ColdStorageOptions,[]ColdStorageOptionsObservation)

	// Number of dedicated main nodes in the cluster.
	dedicatedMasterCount?: null | float64 @go(DedicatedMasterCount,*float64)

	// Whether dedicated main nodes are enabled for the cluster.
	dedicatedMasterEnabled?: null | bool @go(DedicatedMasterEnabled,*bool)

	// Instance type of the dedicated main nodes in the cluster.
	dedicatedMasterType?: null | string @go(DedicatedMasterType,*string)

	// Number of instances in the cluster.
	instanceCount?: null | float64 @go(InstanceCount,*float64)

	// Instance type of data nodes in the cluster.
	instanceType?: null | string @go(InstanceType,*string)

	// Number of warm nodes in the cluster. Valid values are between 2 and 150. warm_count can be only and must be set when warm_enabled is set to true.
	warmCount?: null | float64 @go(WarmCount,*float64)

	// Whether to enable warm storage.
	warmEnabled?: null | bool @go(WarmEnabled,*bool)

	// Instance type for the OpenSearch cluster's warm nodes. Valid values are ultrawarm1.medium.search, ultrawarm1.large.search and ultrawarm1.xlarge.search. warm_type can be only and must be set when warm_enabled is set to true.
	warmType?: null | string @go(WarmType,*string)

	// Configuration block containing zone awareness settings. Detailed below.
	zoneAwarenessConfig?: [...#ZoneAwarenessConfigObservation] @go(ZoneAwarenessConfig,[]ZoneAwarenessConfigObservation)

	// Whether zone awareness is enabled, set to true for multi-az deployment. To enable awareness with three Availability Zones, the availability_zone_count within the zone_awareness_config must be set to 3.
	zoneAwarenessEnabled?: null | bool @go(ZoneAwarenessEnabled,*bool)
}

#ClusterConfigParameters: {
	// Configuration block containing cold storage configuration. Detailed below.
	// +kubebuilder:validation:Optional
	coldStorageOptions?: [...#ColdStorageOptionsParameters] @go(ColdStorageOptions,[]ColdStorageOptionsParameters)

	// Number of dedicated main nodes in the cluster.
	// +kubebuilder:validation:Optional
	dedicatedMasterCount?: null | float64 @go(DedicatedMasterCount,*float64)

	// Whether dedicated main nodes are enabled for the cluster.
	// +kubebuilder:validation:Optional
	dedicatedMasterEnabled?: null | bool @go(DedicatedMasterEnabled,*bool)

	// Instance type of the dedicated main nodes in the cluster.
	// +kubebuilder:validation:Optional
	dedicatedMasterType?: null | string @go(DedicatedMasterType,*string)

	// Number of instances in the cluster.
	// +kubebuilder:validation:Optional
	instanceCount?: null | float64 @go(InstanceCount,*float64)

	// Instance type of data nodes in the cluster.
	// +kubebuilder:validation:Optional
	instanceType?: null | string @go(InstanceType,*string)

	// Number of warm nodes in the cluster. Valid values are between 2 and 150. warm_count can be only and must be set when warm_enabled is set to true.
	// +kubebuilder:validation:Optional
	warmCount?: null | float64 @go(WarmCount,*float64)

	// Whether to enable warm storage.
	// +kubebuilder:validation:Optional
	warmEnabled?: null | bool @go(WarmEnabled,*bool)

	// Instance type for the OpenSearch cluster's warm nodes. Valid values are ultrawarm1.medium.search, ultrawarm1.large.search and ultrawarm1.xlarge.search. warm_type can be only and must be set when warm_enabled is set to true.
	// +kubebuilder:validation:Optional
	warmType?: null | string @go(WarmType,*string)

	// Configuration block containing zone awareness settings. Detailed below.
	// +kubebuilder:validation:Optional
	zoneAwarenessConfig?: [...#ZoneAwarenessConfigParameters] @go(ZoneAwarenessConfig,[]ZoneAwarenessConfigParameters)

	// Whether zone awareness is enabled, set to true for multi-az deployment. To enable awareness with three Availability Zones, the availability_zone_count within the zone_awareness_config must be set to 3.
	// +kubebuilder:validation:Optional
	zoneAwarenessEnabled?: null | bool @go(ZoneAwarenessEnabled,*bool)
}

#CognitoOptionsObservation: {
	// Whether Amazon Cognito authentication with Kibana is enabled or not. Default is false.
	enabled?: null | bool @go(Enabled,*bool)

	// ID of the Cognito Identity Pool to use.
	identityPoolId?: null | string @go(IdentityPoolID,*string)

	// ARN of the IAM role that has the AmazonOpenSearchServiceCognitoAccess policy attached.
	roleArn?: null | string @go(RoleArn,*string)

	// ID of the Cognito User Pool to use.
	userPoolId?: null | string @go(UserPoolID,*string)
}

#CognitoOptionsParameters: {
	// Whether Amazon Cognito authentication with Kibana is enabled or not. Default is false.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// ID of the Cognito Identity Pool to use.
	// +kubebuilder:validation:Required
	identityPoolId?: null | string @go(IdentityPoolID,*string)

	// ARN of the IAM role that has the AmazonOpenSearchServiceCognitoAccess policy attached.
	// +kubebuilder:validation:Required
	roleArn?: null | string @go(RoleArn,*string)

	// ID of the Cognito User Pool to use.
	// +kubebuilder:validation:Required
	userPoolId?: null | string @go(UserPoolID,*string)
}

#ColdStorageOptionsObservation: {
	// Boolean to enable cold storage for an OpenSearch domain. Defaults to false. Master and ultrawarm nodes must be enabled for cold storage.
	enabled?: null | bool @go(Enabled,*bool)
}

#ColdStorageOptionsParameters: {
	// Boolean to enable cold storage for an OpenSearch domain. Defaults to false. Master and ultrawarm nodes must be enabled for cold storage.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)
}

#DomainEndpointOptionsObservation: {
	// Fully qualified domain for your custom endpoint.
	customEndpoint?: null | string @go(CustomEndpoint,*string)

	// ACM certificate ARN for your custom endpoint.
	customEndpointCertificateArn?: null | string @go(CustomEndpointCertificateArn,*string)

	// Whether to enable custom endpoint for the OpenSearch domain.
	customEndpointEnabled?: null | bool @go(CustomEndpointEnabled,*bool)

	// Whether or not to require HTTPS. Defaults to true.
	enforceHttps?: null | bool @go(EnforceHTTPS,*bool)

	// Name of the TLS security policy that needs to be applied to the HTTPS endpoint. Valid values:  Policy-Min-TLS-1-0-2019-07 and Policy-Min-TLS-1-2-2019-07.
	tlsSecurityPolicy?: null | string @go(TLSSecurityPolicy,*string)
}

#DomainEndpointOptionsParameters: {
	// Fully qualified domain for your custom endpoint.
	// +kubebuilder:validation:Optional
	customEndpoint?: null | string @go(CustomEndpoint,*string)

	// ACM certificate ARN for your custom endpoint.
	// +kubebuilder:validation:Optional
	customEndpointCertificateArn?: null | string @go(CustomEndpointCertificateArn,*string)

	// Whether to enable custom endpoint for the OpenSearch domain.
	// +kubebuilder:validation:Optional
	customEndpointEnabled?: null | bool @go(CustomEndpointEnabled,*bool)

	// Whether or not to require HTTPS. Defaults to true.
	// +kubebuilder:validation:Optional
	enforceHttps?: null | bool @go(EnforceHTTPS,*bool)

	// Name of the TLS security policy that needs to be applied to the HTTPS endpoint. Valid values:  Policy-Min-TLS-1-0-2019-07 and Policy-Min-TLS-1-2-2019-07.
	// +kubebuilder:validation:Optional
	tlsSecurityPolicy?: null | string @go(TLSSecurityPolicy,*string)
}

#DomainObservation: {
	// , are prefaced with es: for both.
	accessPolicies?: null | string @go(AccessPolicies,*string)

	// Key-value string pairs to specify advanced configuration options.
	advancedOptions?: {[string]: null | string} @go(AdvancedOptions,map[string]*string)

	// Configuration block for fine-grained access control. Detailed below.
	advancedSecurityOptions?: [...#AdvancedSecurityOptionsObservation] @go(AdvancedSecurityOptions,[]AdvancedSecurityOptionsObservation)

	// ARN of the domain.
	arn?: null | string @go(Arn,*string)

	// Configuration block for the Auto-Tune options of the domain. Detailed below.
	autoTuneOptions?: [...#AutoTuneOptionsObservation] @go(AutoTuneOptions,[]AutoTuneOptionsObservation)

	// Configuration block for the cluster of the domain. Detailed below.
	clusterConfig?: [...#ClusterConfigObservation] @go(ClusterConfig,[]ClusterConfigObservation)

	// Configuration block for authenticating Kibana with Cognito. Detailed below.
	cognitoOptions?: [...#CognitoOptionsObservation] @go(CognitoOptions,[]CognitoOptionsObservation)

	// Configuration block for domain endpoint HTTP(S) related options. Detailed below.
	domainEndpointOptions?: [...#DomainEndpointOptionsObservation] @go(DomainEndpointOptions,[]DomainEndpointOptionsObservation)

	// Unique identifier for the domain.
	domainId?: null | string @go(DomainID,*string)

	// Name of the domain.
	domainName?: null | string @go(DomainName,*string)

	// Configuration block for EBS related options, may be required based on chosen instance size. Detailed below.
	ebsOptions?: [...#EBSOptionsObservation] @go(EBSOptions,[]EBSOptionsObservation)

	// Configuration block for encrypt at rest options. Only available for certain instance types. Detailed below.
	encryptAtRest?: [...#EncryptAtRestObservation] @go(EncryptAtRest,[]EncryptAtRestObservation)

	// Domain-specific endpoint used to submit index, search, and data upload requests.
	endpoint?: null | string @go(Endpoint,*string)

	// while Elasticsearch has elasticsearch_version
	engineVersion?: null | string @go(EngineVersion,*string)
	id?:            null | string @go(ID,*string)

	// Domain-specific endpoint for kibana without https scheme.
	kibanaEndpoint?: null | string @go(KibanaEndpoint,*string)

	// Configuration block for publishing slow and application logs to CloudWatch Logs. This block can be declared multiple times, for each log_type, within the same resource. Detailed below.
	logPublishingOptions?: [...#LogPublishingOptionsObservation] @go(LogPublishingOptions,[]LogPublishingOptionsObservation)

	// Configuration block for node-to-node encryption options. Detailed below.
	nodeToNodeEncryption?: [...#NodeToNodeEncryptionObservation] @go(NodeToNodeEncryption,[]NodeToNodeEncryptionObservation)

	// Configuration block for snapshot related options. Detailed below. DEPRECATED. For domains running OpenSearch 5.3 and later, Amazon OpenSearch takes hourly automated snapshots, making this setting irrelevant. For domains running earlier versions, OpenSearch takes daily automated snapshots.
	snapshotOptions?: [...#SnapshotOptionsObservation] @go(SnapshotOptions,[]SnapshotOptionsObservation)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// Configuration block for VPC related options. Adding or removing this configuration forces a new resource (documentation). Detailed below.
	vpcOptions?: [...#VPCOptionsObservation] @go(VPCOptions,[]VPCOptionsObservation)
}

#DomainParameters: {
	// Key-value string pairs to specify advanced configuration options.
	// +kubebuilder:validation:Optional
	advancedOptions?: {[string]: null | string} @go(AdvancedOptions,map[string]*string)

	// Configuration block for fine-grained access control. Detailed below.
	// +kubebuilder:validation:Optional
	advancedSecurityOptions?: [...#AdvancedSecurityOptionsParameters] @go(AdvancedSecurityOptions,[]AdvancedSecurityOptionsParameters)

	// Configuration block for the Auto-Tune options of the domain. Detailed below.
	// +kubebuilder:validation:Optional
	autoTuneOptions?: [...#AutoTuneOptionsParameters] @go(AutoTuneOptions,[]AutoTuneOptionsParameters)

	// Configuration block for the cluster of the domain. Detailed below.
	// +kubebuilder:validation:Optional
	clusterConfig?: [...#ClusterConfigParameters] @go(ClusterConfig,[]ClusterConfigParameters)

	// Configuration block for authenticating Kibana with Cognito. Detailed below.
	// +kubebuilder:validation:Optional
	cognitoOptions?: [...#CognitoOptionsParameters] @go(CognitoOptions,[]CognitoOptionsParameters)

	// Configuration block for domain endpoint HTTP(S) related options. Detailed below.
	// +kubebuilder:validation:Optional
	domainEndpointOptions?: [...#DomainEndpointOptionsParameters] @go(DomainEndpointOptions,[]DomainEndpointOptionsParameters)

	// Name of the domain.
	// +kubebuilder:validation:Optional
	domainName?: null | string @go(DomainName,*string)

	// Configuration block for EBS related options, may be required based on chosen instance size. Detailed below.
	// +kubebuilder:validation:Optional
	ebsOptions?: [...#EBSOptionsParameters] @go(EBSOptions,[]EBSOptionsParameters)

	// Configuration block for encrypt at rest options. Only available for certain instance types. Detailed below.
	// +kubebuilder:validation:Optional
	encryptAtRest?: [...#EncryptAtRestParameters] @go(EncryptAtRest,[]EncryptAtRestParameters)

	// while Elasticsearch has elasticsearch_version
	// +kubebuilder:validation:Optional
	engineVersion?: null | string @go(EngineVersion,*string)

	// Configuration block for publishing slow and application logs to CloudWatch Logs. This block can be declared multiple times, for each log_type, within the same resource. Detailed below.
	// +kubebuilder:validation:Optional
	logPublishingOptions?: [...#LogPublishingOptionsParameters] @go(LogPublishingOptions,[]LogPublishingOptionsParameters)

	// Configuration block for node-to-node encryption options. Detailed below.
	// +kubebuilder:validation:Optional
	nodeToNodeEncryption?: [...#NodeToNodeEncryptionParameters] @go(NodeToNodeEncryption,[]NodeToNodeEncryptionParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Configuration block for snapshot related options. Detailed below. DEPRECATED. For domains running OpenSearch 5.3 and later, Amazon OpenSearch takes hourly automated snapshots, making this setting irrelevant. For domains running earlier versions, OpenSearch takes daily automated snapshots.
	// +kubebuilder:validation:Optional
	snapshotOptions?: [...#SnapshotOptionsParameters] @go(SnapshotOptions,[]SnapshotOptionsParameters)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Configuration block for VPC related options. Adding or removing this configuration forces a new resource (documentation). Detailed below.
	// +kubebuilder:validation:Optional
	vpcOptions?: [...#VPCOptionsParameters] @go(VPCOptions,[]VPCOptionsParameters)
}

#DurationObservation: {
	// Unit of time specifying the duration of an Auto-Tune maintenance window. Valid values: HOURS.
	unit?: null | string @go(Unit,*string)

	// An integer specifying the value of the duration of an Auto-Tune maintenance window.
	value?: null | float64 @go(Value,*float64)
}

#DurationParameters: {
	// Unit of time specifying the duration of an Auto-Tune maintenance window. Valid values: HOURS.
	// +kubebuilder:validation:Required
	unit?: null | string @go(Unit,*string)

	// An integer specifying the value of the duration of an Auto-Tune maintenance window.
	// +kubebuilder:validation:Required
	value?: null | float64 @go(Value,*float64)
}

#EBSOptionsObservation: {
	// Whether EBS volumes are attached to data nodes in the domain.
	ebsEnabled?: null | bool @go(EBSEnabled,*bool)

	// Baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the GP3 and Provisioned IOPS EBS volume types.
	iops?: null | float64 @go(Iops,*float64)

	// Specifies the throughput (in MiB/s) of the EBS volumes attached to data nodes. Applicable only for the gp3 volume type. Valid values are between 125 and 1000.
	throughput?: null | float64 @go(Throughput,*float64)

	// Size of EBS volumes attached to data nodes (in GiB).
	volumeSize?: null | float64 @go(VolumeSize,*float64)

	// Type of EBS volumes attached to data nodes.
	volumeType?: null | string @go(VolumeType,*string)
}

#EBSOptionsParameters: {
	// Whether EBS volumes are attached to data nodes in the domain.
	// +kubebuilder:validation:Required
	ebsEnabled?: null | bool @go(EBSEnabled,*bool)

	// Baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the GP3 and Provisioned IOPS EBS volume types.
	// +kubebuilder:validation:Optional
	iops?: null | float64 @go(Iops,*float64)

	// Specifies the throughput (in MiB/s) of the EBS volumes attached to data nodes. Applicable only for the gp3 volume type. Valid values are between 125 and 1000.
	// +kubebuilder:validation:Optional
	throughput?: null | float64 @go(Throughput,*float64)

	// Size of EBS volumes attached to data nodes (in GiB).
	// +kubebuilder:validation:Optional
	volumeSize?: null | float64 @go(VolumeSize,*float64)

	// Type of EBS volumes attached to data nodes.
	// +kubebuilder:validation:Optional
	volumeType?: null | string @go(VolumeType,*string)
}

#EncryptAtRestObservation: {
	// Whether to enable encryption at rest. If the encrypt_at_rest block is not provided then this defaults to false. Enabling encryption on new domains requires an engine_version of OpenSearch_X.Y or Elasticsearch_5.1 or greater.
	enabled?: null | bool @go(Enabled,*bool)

	// KMS key ARN to encrypt the Elasticsearch domain with. If not specified then it defaults to using the aws/es service KMS key. Note that KMS will accept a KMS key ID but will return the key ARN.
	kmsKeyId?: null | string @go(KMSKeyID,*string)
}

#EncryptAtRestParameters: {
	// Whether to enable encryption at rest. If the encrypt_at_rest block is not provided then this defaults to false. Enabling encryption on new domains requires an engine_version of OpenSearch_X.Y or Elasticsearch_5.1 or greater.
	// +kubebuilder:validation:Required
	enabled?: null | bool @go(Enabled,*bool)

	// KMS key ARN to encrypt the Elasticsearch domain with. If not specified then it defaults to using the aws/es service KMS key. Note that KMS will accept a KMS key ID but will return the key ARN.
	// +kubebuilder:validation:Optional
	kmsKeyId?: null | string @go(KMSKeyID,*string)
}

#LogPublishingOptionsObservation: {
	// ARN of the Cloudwatch log group to which log needs to be published.
	cloudwatchLogGroupArn?: null | string @go(CloudwatchLogGroupArn,*string)

	// Whether given log publishing option is enabled or not.
	enabled?: null | bool @go(Enabled,*bool)

	// Type of OpenSearch log. Valid values: INDEX_SLOW_LOGS, SEARCH_SLOW_LOGS, ES_APPLICATION_LOGS, AUDIT_LOGS.
	logType?: null | string @go(LogType,*string)
}

#LogPublishingOptionsParameters: {
	// ARN of the Cloudwatch log group to which log needs to be published.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/cloudwatchlogs/v1beta1.Group
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	cloudwatchLogGroupArn?: null | string @go(CloudwatchLogGroupArn,*string)

	// Whether given log publishing option is enabled or not.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// Type of OpenSearch log. Valid values: INDEX_SLOW_LOGS, SEARCH_SLOW_LOGS, ES_APPLICATION_LOGS, AUDIT_LOGS.
	// +kubebuilder:validation:Required
	logType?: null | string @go(LogType,*string)
}

#MaintenanceScheduleObservation: {
	// A cron expression specifying the recurrence pattern for an Auto-Tune maintenance schedule.
	cronExpressionForRecurrence?: null | string @go(CronExpressionForRecurrence,*string)

	// Configuration block for the duration of the Auto-Tune maintenance window. Detailed below.
	duration?: [...#DurationObservation] @go(Duration,[]DurationObservation)

	// Date and time at which to start the Auto-Tune maintenance schedule in RFC3339 format.
	startAt?: null | string @go(StartAt,*string)
}

#MaintenanceScheduleParameters: {
	// A cron expression specifying the recurrence pattern for an Auto-Tune maintenance schedule.
	// +kubebuilder:validation:Required
	cronExpressionForRecurrence?: null | string @go(CronExpressionForRecurrence,*string)

	// Configuration block for the duration of the Auto-Tune maintenance window. Detailed below.
	// +kubebuilder:validation:Required
	duration: [...#DurationParameters] @go(Duration,[]DurationParameters)

	// Date and time at which to start the Auto-Tune maintenance schedule in RFC3339 format.
	// +kubebuilder:validation:Required
	startAt?: null | string @go(StartAt,*string)
}

#MasterUserOptionsObservation: {
	// ARN for the main user. Only specify if internal_user_database_enabled is not set or set to false.
	masterUserArn?: null | string @go(MasterUserArn,*string)

	// Main user's username, which is stored in the Amazon OpenSearch Service domain's internal database. Only specify if internal_user_database_enabled is set to true.
	masterUserName?: null | string @go(MasterUserName,*string)
}

#MasterUserOptionsParameters: {
	// ARN for the main user. Only specify if internal_user_database_enabled is not set or set to false.
	// +kubebuilder:validation:Optional
	masterUserArn?: null | string @go(MasterUserArn,*string)

	// Main user's username, which is stored in the Amazon OpenSearch Service domain's internal database. Only specify if internal_user_database_enabled is set to true.
	// +kubebuilder:validation:Optional
	masterUserName?: null | string @go(MasterUserName,*string)
}

#NodeToNodeEncryptionObservation: {
	// Whether to enable node-to-node encryption. If the node_to_node_encryption block is not provided then this defaults to false. Enabling node-to-node encryption of a new domain requires an engine_version of OpenSearch_X.Y or Elasticsearch_6.0 or greater.
	enabled?: null | bool @go(Enabled,*bool)
}

#NodeToNodeEncryptionParameters: {
	// Whether to enable node-to-node encryption. If the node_to_node_encryption block is not provided then this defaults to false. Enabling node-to-node encryption of a new domain requires an engine_version of OpenSearch_X.Y or Elasticsearch_6.0 or greater.
	// +kubebuilder:validation:Required
	enabled?: null | bool @go(Enabled,*bool)
}

#SnapshotOptionsObservation: {
	// Hour during which the service takes an automated daily snapshot of the indices in the domain.
	automatedSnapshotStartHour?: null | float64 @go(AutomatedSnapshotStartHour,*float64)
}

#SnapshotOptionsParameters: {
	// Hour during which the service takes an automated daily snapshot of the indices in the domain.
	// +kubebuilder:validation:Required
	automatedSnapshotStartHour?: null | float64 @go(AutomatedSnapshotStartHour,*float64)
}

#VPCOptionsObservation: {
	// If the domain was created inside a VPC, the names of the availability zones the configured subnet_ids were created inside.
	availabilityZones?: [...null | string] @go(AvailabilityZones,[]*string)

	// List of VPC Security Group IDs to be applied to the OpenSearch domain endpoints. If omitted, the default Security Group for the VPC will be used.
	securityGroupIds?: [...null | string] @go(SecurityGroupIds,[]*string)

	// List of VPC Subnet IDs for the OpenSearch domain endpoints to be created in.
	subnetIds?: [...null | string] @go(SubnetIds,[]*string)

	// If the domain was created inside a VPC, the ID of the VPC.
	vpcId?: null | string @go(VPCID,*string)
}

#VPCOptionsParameters: {
	// List of VPC Security Group IDs to be applied to the OpenSearch domain endpoints. If omitted, the default Security Group for the VPC will be used.
	// +kubebuilder:validation:Optional
	securityGroupIds?: [...null | string] @go(SecurityGroupIds,[]*string)

	// List of VPC Subnet IDs for the OpenSearch domain endpoints to be created in.
	// +kubebuilder:validation:Optional
	subnetIds?: [...null | string] @go(SubnetIds,[]*string)
}

#ZoneAwarenessConfigObservation: {
	// Number of Availability Zones for the domain to use with zone_awareness_enabled. Defaults to 2. Valid values: 2 or 3.
	availabilityZoneCount?: null | float64 @go(AvailabilityZoneCount,*float64)
}

#ZoneAwarenessConfigParameters: {
	// Number of Availability Zones for the domain to use with zone_awareness_enabled. Defaults to 2. Valid values: 2 or 3.
	// +kubebuilder:validation:Optional
	availabilityZoneCount?: null | float64 @go(AvailabilityZoneCount,*float64)
}

// DomainSpec defines the desired state of Domain
#DomainSpec: {
	forProvider: #DomainParameters @go(ForProvider)
}

// DomainStatus defines the observed state of Domain.
#DomainStatus: {
	atProvider?: #DomainObservation @go(AtProvider)
}

// Domain is the Schema for the Domains API.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Domain: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.domainName)",message="domainName is a required parameter"
	spec:    #DomainSpec   @go(Spec)
	status?: #DomainStatus @go(Status)
}

// DomainList contains a list of Domains
#DomainList: {
	items: [...#Domain] @go(Items,[]Domain)
}
