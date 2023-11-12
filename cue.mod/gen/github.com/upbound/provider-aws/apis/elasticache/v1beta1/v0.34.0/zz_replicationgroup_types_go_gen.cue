// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/elasticache/v1beta1

package v1beta1

#ClusterModeObservation: {
	// Number of node groups (shards) for this Redis replication group.
	// Changing this number will trigger a resizing operation before other settings modifications.
	numNodeGroups?: null | float64 @go(NumNodeGroups,*float64)

	// Number of replica nodes in each node group.
	// Changing this number will trigger a resizing operation before other settings modifications.
	// Valid values are 0 to 5.
	replicasPerNodeGroup?: null | float64 @go(ReplicasPerNodeGroup,*float64)
}

#ClusterModeParameters: {
	// Number of node groups (shards) for this Redis replication group.
	// Changing this number will trigger a resizing operation before other settings modifications.
	// +kubebuilder:validation:Optional
	numNodeGroups?: null | float64 @go(NumNodeGroups,*float64)

	// Number of replica nodes in each node group.
	// Changing this number will trigger a resizing operation before other settings modifications.
	// Valid values are 0 to 5.
	// +kubebuilder:validation:Optional
	replicasPerNodeGroup?: null | float64 @go(ReplicasPerNodeGroup,*float64)
}

#ReplicationGroupLogDeliveryConfigurationObservation: {
	// Name of either the CloudWatch Logs LogGroup or Kinesis Data Firehose resource.
	destination?: null | string @go(Destination,*string)

	// For CloudWatch Logs use cloudwatch-logs or for Kinesis Data Firehose use kinesis-firehose.
	destinationType?: null | string @go(DestinationType,*string)

	// Valid values are json or text
	logFormat?: null | string @go(LogFormat,*string)

	// Valid values are  slow-log or engine-log. Max 1 of each.
	logType?: null | string @go(LogType,*string)
}

#ReplicationGroupLogDeliveryConfigurationParameters: {
	// Name of either the CloudWatch Logs LogGroup or Kinesis Data Firehose resource.
	// +kubebuilder:validation:Required
	destination?: null | string @go(Destination,*string)

	// For CloudWatch Logs use cloudwatch-logs or for Kinesis Data Firehose use kinesis-firehose.
	// +kubebuilder:validation:Required
	destinationType?: null | string @go(DestinationType,*string)

	// Valid values are json or text
	// +kubebuilder:validation:Required
	logFormat?: null | string @go(LogFormat,*string)

	// Valid values are  slow-log or engine-log. Max 1 of each.
	// +kubebuilder:validation:Required
	logType?: null | string @go(LogType,*string)
}

#ReplicationGroupObservation: {
	// Specifies whether any modifications are applied immediately, or during the next maintenance window. Default is false.
	applyImmediately?: null | bool @go(ApplyImmediately,*bool)

	// ARN of the created ElastiCache Replication Group.
	arn?: null | string @go(Arn,*string)

	// Whether to enable encryption at rest.
	atRestEncryptionEnabled?: null | bool @go(AtRestEncryptionEnabled,*bool)

	// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
	// Only supported for engine type "redis" and if the engine version is 6 or higher.
	// Defaults to true.
	autoMinorVersionUpgrade?: null | string @go(AutoMinorVersionUpgrade,*string)

	// Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, num_cache_clusters must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to false.
	automaticFailoverEnabled?: null | bool @go(AutomaticFailoverEnabled,*bool)

	// List of EC2 availability zones in which the replication group's cache clusters will be created. The order of the availability zones in the list is not considered.
	availabilityZones?: [...null | string] @go(AvailabilityZones,[]*string)

	// Indicates if cluster mode is enabled.
	clusterEnabled?: null | bool @go(ClusterEnabled,*bool)

	// Create a native Redis cluster. automatic_failover_enabled must be set to true. Cluster Mode documented below. Only 1 cluster_mode block is allowed. Note that configuring this block does not enable cluster mode, i.e., data sharding, this requires using a parameter group that has the parameter cluster-enabled set to true.
	clusterMode?: [...#ClusterModeObservation] @go(ClusterMode,[]ClusterModeObservation)

	// Address of the replication group configuration endpoint when cluster mode is enabled.
	configurationEndpointAddress?: null | string @go(ConfigurationEndpointAddress,*string)

	// Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to true when using r6gd nodes.
	dataTieringEnabled?: null | bool @go(DataTieringEnabled,*bool)

	// created description for the replication group. Must not be empty.
	description?: null | string @go(Description,*string)

	// Name of the cache engine to be used for the clusters in this replication group. The only valid value is redis.
	engine?: null | string @go(Engine,*string)

	// Version number of the cache engine to be used for the cache clusters in this replication group.
	// If the version is 6 or higher, the major and minor version can be set, e.g., 6.2,
	// or the minor version can be unspecified which will use the latest version at creation time, e.g., 6.x.
	// Otherwise, specify the full version desired, e.g., 5.0.6.
	// The actual engine version used is returned in the attribute engine_version_actual, see Attributes Reference below.
	engineVersion?: null | string @go(EngineVersion,*string)

	// Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine.
	engineVersionActual?: null | string @go(EngineVersionActual,*string)

	// The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made.
	finalSnapshotIdentifier?: null | string @go(FinalSnapshotIdentifier,*string)

	// The ID of the global replication group to which this replication group should belong. If this parameter is specified, the replication group is added to the specified global replication group as a secondary replication group; otherwise, the replication group is not part of any global replication group. If global_replication_group_id is set, the num_node_groups parameter (or the num_node_groups parameter of the deprecated cluster_mode block) cannot be set.
	globalReplicationGroupId?: null | string @go(GlobalReplicationGroupID,*string)

	// ID of the ElastiCache Replication Group.
	id?: null | string @go(ID,*string)

	// The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if at_rest_encryption_enabled = true.
	kmsKeyId?: null | string @go(KMSKeyID,*string)

	// Specifies the destination and format of Redis SLOWLOG or Redis Engine Log. See the documentation on Amazon ElastiCache. See Log Delivery Configuration below for more details.
	logDeliveryConfiguration?: [...#ReplicationGroupLogDeliveryConfigurationObservation] @go(LogDeliveryConfiguration,[]ReplicationGroupLogDeliveryConfigurationObservation)

	// ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: sun:05:00-sun:09:00
	maintenanceWindow?: null | string @go(MaintenanceWindow,*string)

	// Identifiers of all the nodes that are part of this replication group.
	memberClusters?: [...null | string] @go(MemberClusters,[]*string)

	// Specifies whether to enable Multi-AZ Support for the replication group. If true, automatic_failover_enabled must also be enabled. Defaults to false.
	multiAzEnabled?: null | bool @go(MultiAzEnabled,*bool)

	// Instance class to be used. See AWS documentation for information on supported node types and guidance on selecting node types. Required unless global_replication_group_id is set. Cannot be set if global_replication_group_id is set.
	nodeType?: null | string @go(NodeType,*string)

	// east-1:012345678999:my_sns_topic
	notificationTopicArn?: null | string @go(NotificationTopicArn,*string)

	// 00#.
	numCacheClusters?: null | float64 @go(NumCacheClusters,*float64)

	// Number of node groups (shards) for this Redis replication group.
	// Changing this number will trigger a resizing operation before other settings modifications.
	numNodeGroups?: null | float64 @go(NumNodeGroups,*float64)

	// Number of cache clusters (primary and replicas) this replication group will have. If Multi-AZ is enabled, the value of this parameter must be at least 2. Updates will occur before other modifications. Conflicts with num_cache_clusters, num_node_groups, or the deprecated cluster_mode. Defaults to 1.
	numberCacheClusters?: null | float64 @go(NumberCacheClusters,*float64)

	// Name of the parameter group to associate with this replication group. If this argument is omitted, the default cache parameter group for the specified engine is used. To enable "cluster mode", i.e., data sharding, use a parameter group that has the parameter cluster-enabled set to true.
	parameterGroupName?: null | string @go(ParameterGroupName,*string)

	// –  Port number on which each of the cache nodes will accept connections. For Memcache the default is 11211, and for Redis the default port is 6379.
	port?: null | float64 @go(Port,*float64)

	// List of EC2 availability zones in which the replication group's cache clusters will be created. The order of the availability zones in the list is considered. The first item in the list will be the primary node. Ignored when updating.
	preferredCacheClusterAzs?: [...null | string] @go(PreferredCacheClusterAzs,[]*string)

	// (Redis only) Address of the endpoint for the primary node in the replication group, if the cluster mode is disabled.
	primaryEndpointAddress?: null | string @go(PrimaryEndpointAddress,*string)

	// (Redis only) Address of the endpoint for the reader node in the replication group, if the cluster mode is disabled.
	readerEndpointAddress?: null | string @go(ReaderEndpointAddress,*string)

	// Number of replica nodes in each node group.
	// Changing this number will trigger a resizing operation before other settings modifications.
	// Valid values are 0 to 5.
	replicasPerNodeGroup?: null | float64 @go(ReplicasPerNodeGroup,*float64)

	// created description for the replication group. Must not be empty.
	replicationGroupDescription?: null | string @go(ReplicationGroupDescription,*string)

	// One or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud
	securityGroupIds?: [...null | string] @go(SecurityGroupIds,[]*string)

	// List of cache security group names to associate with this replication group.
	securityGroupNames?: [...null | string] @go(SecurityGroupNames,[]*string)

	// –  List of ARNs that identify Redis RDB snapshot files stored in Amazon S3. The names object names cannot contain any commas.
	snapshotArns?: [...null | string] @go(SnapshotArns,[]*string)

	// Name of a snapshot from which to restore data into the new node group. Changing the snapshot_name forces a new resource.
	snapshotName?: null | string @go(SnapshotName,*string)

	// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of snapshot_retention_limit is set to zero (0), backups are turned off. Please note that setting a snapshot_retention_limit is not supported on cache.t1.micro cache nodes
	snapshotRetentionLimit?: null | float64 @go(SnapshotRetentionLimit,*float64)

	// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. The minimum snapshot window is a 60 minute period. Example: 05:00-09:00
	snapshotWindow?: null | string @go(SnapshotWindow,*string)

	// Name of the cache subnet group to be used for the replication group.
	subnetGroupName?: null | string @go(SubnetGroupName,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// Whether to enable encryption in transit.
	transitEncryptionEnabled?: null | bool @go(TransitEncryptionEnabled,*bool)

	// User Group ID to associate with the replication group. Only a maximum of one (1) user group ID is valid. NOTE: This argument is a set because the AWS specification allows for multiple IDs. However, in practice, AWS only allows a maximum size of one.
	userGroupIds?: [...null | string] @go(UserGroupIds,[]*string)
}

#ReplicationGroupParameters: {
	// Specifies whether any modifications are applied immediately, or during the next maintenance window. Default is false.
	// +kubebuilder:validation:Optional
	applyImmediately?: null | bool @go(ApplyImmediately,*bool)

	// Whether to enable encryption at rest.
	// +kubebuilder:validation:Optional
	atRestEncryptionEnabled?: null | bool @go(AtRestEncryptionEnabled,*bool)

	// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
	// Only supported for engine type "redis" and if the engine version is 6 or higher.
	// Defaults to true.
	// +kubebuilder:validation:Optional
	autoMinorVersionUpgrade?: null | string @go(AutoMinorVersionUpgrade,*string)

	// Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, num_cache_clusters must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to false.
	// +kubebuilder:validation:Optional
	automaticFailoverEnabled?: null | bool @go(AutomaticFailoverEnabled,*bool)

	// List of EC2 availability zones in which the replication group's cache clusters will be created. The order of the availability zones in the list is not considered.
	// +kubebuilder:validation:Optional
	availabilityZones?: [...null | string] @go(AvailabilityZones,[]*string)

	// Create a native Redis cluster. automatic_failover_enabled must be set to true. Cluster Mode documented below. Only 1 cluster_mode block is allowed. Note that configuring this block does not enable cluster mode, i.e., data sharding, this requires using a parameter group that has the parameter cluster-enabled set to true.
	// +kubebuilder:validation:Optional
	clusterMode?: [...#ClusterModeParameters] @go(ClusterMode,[]ClusterModeParameters)

	// Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to true when using r6gd nodes.
	// +kubebuilder:validation:Optional
	dataTieringEnabled?: null | bool @go(DataTieringEnabled,*bool)

	// created description for the replication group. Must not be empty.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Name of the cache engine to be used for the clusters in this replication group. The only valid value is redis.
	// +kubebuilder:validation:Optional
	engine?: null | string @go(Engine,*string)

	// Version number of the cache engine to be used for the cache clusters in this replication group.
	// If the version is 6 or higher, the major and minor version can be set, e.g., 6.2,
	// or the minor version can be unspecified which will use the latest version at creation time, e.g., 6.x.
	// Otherwise, specify the full version desired, e.g., 5.0.6.
	// The actual engine version used is returned in the attribute engine_version_actual, see Attributes Reference below.
	// +kubebuilder:validation:Optional
	engineVersion?: null | string @go(EngineVersion,*string)

	// The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made.
	// +kubebuilder:validation:Optional
	finalSnapshotIdentifier?: null | string @go(FinalSnapshotIdentifier,*string)

	// The ID of the global replication group to which this replication group should belong. If this parameter is specified, the replication group is added to the specified global replication group as a secondary replication group; otherwise, the replication group is not part of any global replication group. If global_replication_group_id is set, the num_node_groups parameter (or the num_node_groups parameter of the deprecated cluster_mode block) cannot be set.
	// +kubebuilder:validation:Optional
	globalReplicationGroupId?: null | string @go(GlobalReplicationGroupID,*string)

	// The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if at_rest_encryption_enabled = true.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/kms/v1beta1.Key
	// +kubebuilder:validation:Optional
	kmsKeyId?: null | string @go(KMSKeyID,*string)

	// Specifies the destination and format of Redis SLOWLOG or Redis Engine Log. See the documentation on Amazon ElastiCache. See Log Delivery Configuration below for more details.
	// +kubebuilder:validation:Optional
	logDeliveryConfiguration?: [...#ReplicationGroupLogDeliveryConfigurationParameters] @go(LogDeliveryConfiguration,[]ReplicationGroupLogDeliveryConfigurationParameters)

	// ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: sun:05:00-sun:09:00
	// +kubebuilder:validation:Optional
	maintenanceWindow?: null | string @go(MaintenanceWindow,*string)

	// Specifies whether to enable Multi-AZ Support for the replication group. If true, automatic_failover_enabled must also be enabled. Defaults to false.
	// +kubebuilder:validation:Optional
	multiAzEnabled?: null | bool @go(MultiAzEnabled,*bool)

	// Instance class to be used. See AWS documentation for information on supported node types and guidance on selecting node types. Required unless global_replication_group_id is set. Cannot be set if global_replication_group_id is set.
	// +kubebuilder:validation:Optional
	nodeType?: null | string @go(NodeType,*string)

	// east-1:012345678999:my_sns_topic
	// +kubebuilder:validation:Optional
	notificationTopicArn?: null | string @go(NotificationTopicArn,*string)

	// 00#.
	// +kubebuilder:validation:Optional
	numCacheClusters?: null | float64 @go(NumCacheClusters,*float64)

	// Number of node groups (shards) for this Redis replication group.
	// Changing this number will trigger a resizing operation before other settings modifications.
	// +kubebuilder:validation:Optional
	numNodeGroups?: null | float64 @go(NumNodeGroups,*float64)

	// Number of cache clusters (primary and replicas) this replication group will have. If Multi-AZ is enabled, the value of this parameter must be at least 2. Updates will occur before other modifications. Conflicts with num_cache_clusters, num_node_groups, or the deprecated cluster_mode. Defaults to 1.
	// +kubebuilder:validation:Optional
	numberCacheClusters?: null | float64 @go(NumberCacheClusters,*float64)

	// Name of the parameter group to associate with this replication group. If this argument is omitted, the default cache parameter group for the specified engine is used. To enable "cluster mode", i.e., data sharding, use a parameter group that has the parameter cluster-enabled set to true.
	// +kubebuilder:validation:Optional
	parameterGroupName?: null | string @go(ParameterGroupName,*string)

	// –  Port number on which each of the cache nodes will accept connections. For Memcache the default is 11211, and for Redis the default port is 6379.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// List of EC2 availability zones in which the replication group's cache clusters will be created. The order of the availability zones in the list is considered. The first item in the list will be the primary node. Ignored when updating.
	// +kubebuilder:validation:Optional
	preferredCacheClusterAzs?: [...null | string] @go(PreferredCacheClusterAzs,[]*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Number of replica nodes in each node group.
	// Changing this number will trigger a resizing operation before other settings modifications.
	// Valid values are 0 to 5.
	// +kubebuilder:validation:Optional
	replicasPerNodeGroup?: null | float64 @go(ReplicasPerNodeGroup,*float64)

	// created description for the replication group. Must not be empty.
	// +kubebuilder:validation:Optional
	replicationGroupDescription?: null | string @go(ReplicationGroupDescription,*string)

	// One or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.SecurityGroup
	// +crossplane:generate:reference:refFieldName=SecurityGroupIDRefs
	// +crossplane:generate:reference:selectorFieldName=SecurityGroupIDSelector
	// +kubebuilder:validation:Optional
	securityGroupIds?: [...null | string] @go(SecurityGroupIds,[]*string)

	// List of cache security group names to associate with this replication group.
	// +kubebuilder:validation:Optional
	securityGroupNames?: [...null | string] @go(SecurityGroupNames,[]*string)

	// –  List of ARNs that identify Redis RDB snapshot files stored in Amazon S3. The names object names cannot contain any commas.
	// +kubebuilder:validation:Optional
	snapshotArns?: [...null | string] @go(SnapshotArns,[]*string)

	// Name of a snapshot from which to restore data into the new node group. Changing the snapshot_name forces a new resource.
	// +kubebuilder:validation:Optional
	snapshotName?: null | string @go(SnapshotName,*string)

	// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of snapshot_retention_limit is set to zero (0), backups are turned off. Please note that setting a snapshot_retention_limit is not supported on cache.t1.micro cache nodes
	// +kubebuilder:validation:Optional
	snapshotRetentionLimit?: null | float64 @go(SnapshotRetentionLimit,*float64)

	// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. The minimum snapshot window is a 60 minute period. Example: 05:00-09:00
	// +kubebuilder:validation:Optional
	snapshotWindow?: null | string @go(SnapshotWindow,*string)

	// Name of the cache subnet group to be used for the replication group.
	// +crossplane:generate:reference:type=SubnetGroup
	// +kubebuilder:validation:Optional
	subnetGroupName?: null | string @go(SubnetGroupName,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Whether to enable encryption in transit.
	// +kubebuilder:validation:Optional
	transitEncryptionEnabled?: null | bool @go(TransitEncryptionEnabled,*bool)

	// User Group ID to associate with the replication group. Only a maximum of one (1) user group ID is valid. NOTE: This argument is a set because the AWS specification allows for multiple IDs. However, in practice, AWS only allows a maximum size of one.
	// +kubebuilder:validation:Optional
	userGroupIds?: [...null | string] @go(UserGroupIds,[]*string)
}

// ReplicationGroupSpec defines the desired state of ReplicationGroup
#ReplicationGroupSpec: {
	forProvider: #ReplicationGroupParameters @go(ForProvider)
}

// ReplicationGroupStatus defines the observed state of ReplicationGroup.
#ReplicationGroupStatus: {
	atProvider?: #ReplicationGroupObservation @go(AtProvider)
}

// ReplicationGroup is the Schema for the ReplicationGroups API. Provides an ElastiCache Replication Group resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ReplicationGroup: {
	spec:    #ReplicationGroupSpec   @go(Spec)
	status?: #ReplicationGroupStatus @go(Status)
}

// ReplicationGroupList contains a list of ReplicationGroups
#ReplicationGroupList: {
	items: [...#ReplicationGroup] @go(Items,[]ReplicationGroup)
}
