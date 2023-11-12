// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/containeraws/v1beta1

package v1beta1

#AutoscalingInitParameters: {
	// Maximum number of nodes in the NodePool. Must be >= min_node_count.
	maxNodeCount?: null | float64 @go(MaxNodeCount,*float64)

	// Minimum number of nodes in the NodePool. Must be >= 1 and <= max_node_count.
	minNodeCount?: null | float64 @go(MinNodeCount,*float64)
}

#AutoscalingMetricsCollectionInitParameters: {
	// The frequency at which EC2 Auto Scaling sends aggregated data to AWS CloudWatch. The only valid value is "1Minute".
	granularity?: null | string @go(Granularity,*string)

	// The metrics to enable. For a list of valid metrics, see https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html. If you specify granularity and don't specify any metrics, all metrics are enabled.
	metrics?: [...null | string] @go(Metrics,[]*string)
}

#AutoscalingMetricsCollectionObservation: {
	// The frequency at which EC2 Auto Scaling sends aggregated data to AWS CloudWatch. The only valid value is "1Minute".
	granularity?: null | string @go(Granularity,*string)

	// The metrics to enable. For a list of valid metrics, see https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html. If you specify granularity and don't specify any metrics, all metrics are enabled.
	metrics?: [...null | string] @go(Metrics,[]*string)
}

#AutoscalingMetricsCollectionParameters: {
	// The frequency at which EC2 Auto Scaling sends aggregated data to AWS CloudWatch. The only valid value is "1Minute".
	// +kubebuilder:validation:Optional
	granularity?: null | string @go(Granularity,*string)

	// The metrics to enable. For a list of valid metrics, see https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html. If you specify granularity and don't specify any metrics, all metrics are enabled.
	// +kubebuilder:validation:Optional
	metrics?: [...null | string] @go(Metrics,[]*string)
}

#AutoscalingObservation: {
	// Maximum number of nodes in the NodePool. Must be >= min_node_count.
	maxNodeCount?: null | float64 @go(MaxNodeCount,*float64)

	// Minimum number of nodes in the NodePool. Must be >= 1 and <= max_node_count.
	minNodeCount?: null | float64 @go(MinNodeCount,*float64)
}

#AutoscalingParameters: {
	// Maximum number of nodes in the NodePool. Must be >= min_node_count.
	// +kubebuilder:validation:Optional
	maxNodeCount?: null | float64 @go(MaxNodeCount,*float64)

	// Minimum number of nodes in the NodePool. Must be >= 1 and <= max_node_count.
	// +kubebuilder:validation:Optional
	minNodeCount?: null | float64 @go(MinNodeCount,*float64)
}

#ConfigConfigEncryptionInitParameters: {
	// Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used.
	kmsKeyArn?: null | string @go(KMSKeyArn,*string)
}

#ConfigConfigEncryptionObservation: {
	// Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used.
	kmsKeyArn?: null | string @go(KMSKeyArn,*string)
}

#ConfigConfigEncryptionParameters: {
	// Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used.
	// +kubebuilder:validation:Optional
	kmsKeyArn?: null | string @go(KMSKeyArn,*string)
}

#ConfigInitParameters: {
	// Optional. Configuration related to CloudWatch metrics collection on the Auto Scaling group of the node pool. When unspecified, metrics collection is disabled.
	autoscalingMetricsCollection?: [...#AutoscalingMetricsCollectionInitParameters] @go(AutoscalingMetricsCollection,[]AutoscalingMetricsCollectionInitParameters)

	// The ARN of the AWS KMS key used to encrypt node pool configuration.
	configEncryption?: [...#ConfigConfigEncryptionInitParameters] @go(ConfigEncryption,[]ConfigConfigEncryptionInitParameters)

	// The name of the AWS IAM role assigned to nodes in the pool.
	iamInstanceProfile?: null | string @go(IAMInstanceProfile,*string)

	// Optional. The AWS instance type. When unspecified, it defaults to m5.large.
	instanceType?: null | string @go(InstanceType,*string)

	// Optional. The initial labels assigned to nodes of this node pool. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Proxy configuration for outbound HTTP(S) traffic.
	proxyConfig?: [...#ConfigProxyConfigInitParameters] @go(ProxyConfig,[]ConfigProxyConfigInitParameters)

	// Optional. Template for the root volume provisioned for node pool nodes. Volumes will be provisioned in the availability zone assigned to the node pool subnet. When unspecified, it defaults to 32 GiB with the GP2 volume type.
	rootVolume?: [...#ConfigRootVolumeInitParameters] @go(RootVolume,[]ConfigRootVolumeInitParameters)

	// Optional. The SSH configuration.
	sshConfig?: [...#ConfigSSHConfigInitParameters] @go(SSHConfig,[]ConfigSSHConfigInitParameters)

	// Optional. The IDs of additional security groups to add to nodes in this pool. The manager will automatically create security groups with minimum rules needed for a functioning cluster.
	securityGroupIds?: [...null | string] @go(SecurityGroupIds,[]*string)

	// Optional. Key/value metadata to assign to each underlying AWS resource. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Optional. The initial taints assigned to nodes of this node pool.
	taints?: [...#TaintsInitParameters] @go(Taints,[]TaintsInitParameters)
}

#ConfigObservation: {
	// Optional. Configuration related to CloudWatch metrics collection on the Auto Scaling group of the node pool. When unspecified, metrics collection is disabled.
	autoscalingMetricsCollection?: [...#AutoscalingMetricsCollectionObservation] @go(AutoscalingMetricsCollection,[]AutoscalingMetricsCollectionObservation)

	// The ARN of the AWS KMS key used to encrypt node pool configuration.
	configEncryption?: [...#ConfigConfigEncryptionObservation] @go(ConfigEncryption,[]ConfigConfigEncryptionObservation)

	// The name of the AWS IAM role assigned to nodes in the pool.
	iamInstanceProfile?: null | string @go(IAMInstanceProfile,*string)

	// Optional. The AWS instance type. When unspecified, it defaults to m5.large.
	instanceType?: null | string @go(InstanceType,*string)

	// Optional. The initial labels assigned to nodes of this node pool. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Proxy configuration for outbound HTTP(S) traffic.
	proxyConfig?: [...#ConfigProxyConfigObservation] @go(ProxyConfig,[]ConfigProxyConfigObservation)

	// Optional. Template for the root volume provisioned for node pool nodes. Volumes will be provisioned in the availability zone assigned to the node pool subnet. When unspecified, it defaults to 32 GiB with the GP2 volume type.
	rootVolume?: [...#ConfigRootVolumeObservation] @go(RootVolume,[]ConfigRootVolumeObservation)

	// Optional. The SSH configuration.
	sshConfig?: [...#ConfigSSHConfigObservation] @go(SSHConfig,[]ConfigSSHConfigObservation)

	// Optional. The IDs of additional security groups to add to nodes in this pool. The manager will automatically create security groups with minimum rules needed for a functioning cluster.
	securityGroupIds?: [...null | string] @go(SecurityGroupIds,[]*string)

	// Optional. Key/value metadata to assign to each underlying AWS resource. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Optional. The initial taints assigned to nodes of this node pool.
	taints?: [...#TaintsObservation] @go(Taints,[]TaintsObservation)
}

#ConfigParameters: {
	// Optional. Configuration related to CloudWatch metrics collection on the Auto Scaling group of the node pool. When unspecified, metrics collection is disabled.
	// +kubebuilder:validation:Optional
	autoscalingMetricsCollection?: [...#AutoscalingMetricsCollectionParameters] @go(AutoscalingMetricsCollection,[]AutoscalingMetricsCollectionParameters)

	// The ARN of the AWS KMS key used to encrypt node pool configuration.
	// +kubebuilder:validation:Optional
	configEncryption?: [...#ConfigConfigEncryptionParameters] @go(ConfigEncryption,[]ConfigConfigEncryptionParameters)

	// The name of the AWS IAM role assigned to nodes in the pool.
	// +kubebuilder:validation:Optional
	iamInstanceProfile?: null | string @go(IAMInstanceProfile,*string)

	// Optional. The AWS instance type. When unspecified, it defaults to m5.large.
	// +kubebuilder:validation:Optional
	instanceType?: null | string @go(InstanceType,*string)

	// Optional. The initial labels assigned to nodes of this node pool. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Proxy configuration for outbound HTTP(S) traffic.
	// +kubebuilder:validation:Optional
	proxyConfig?: [...#ConfigProxyConfigParameters] @go(ProxyConfig,[]ConfigProxyConfigParameters)

	// Optional. Template for the root volume provisioned for node pool nodes. Volumes will be provisioned in the availability zone assigned to the node pool subnet. When unspecified, it defaults to 32 GiB with the GP2 volume type.
	// +kubebuilder:validation:Optional
	rootVolume?: [...#ConfigRootVolumeParameters] @go(RootVolume,[]ConfigRootVolumeParameters)

	// Optional. The SSH configuration.
	// +kubebuilder:validation:Optional
	sshConfig?: [...#ConfigSSHConfigParameters] @go(SSHConfig,[]ConfigSSHConfigParameters)

	// Optional. The IDs of additional security groups to add to nodes in this pool. The manager will automatically create security groups with minimum rules needed for a functioning cluster.
	// +kubebuilder:validation:Optional
	securityGroupIds?: [...null | string] @go(SecurityGroupIds,[]*string)

	// Optional. Key/value metadata to assign to each underlying AWS resource. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Optional. The initial taints assigned to nodes of this node pool.
	// +kubebuilder:validation:Optional
	taints?: [...#TaintsParameters] @go(Taints,[]TaintsParameters)
}

#ConfigProxyConfigInitParameters: {
	// The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
	secretArn?: null | string @go(SecretArn,*string)

	// The version string of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
	secretVersion?: null | string @go(SecretVersion,*string)
}

#ConfigProxyConfigObservation: {
	// The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
	secretArn?: null | string @go(SecretArn,*string)

	// The version string of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
	secretVersion?: null | string @go(SecretVersion,*string)
}

#ConfigProxyConfigParameters: {
	// The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
	// +kubebuilder:validation:Optional
	secretArn?: null | string @go(SecretArn,*string)

	// The version string of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
	// +kubebuilder:validation:Optional
	secretVersion?: null | string @go(SecretVersion,*string)
}

#ConfigRootVolumeInitParameters: {
	// Optional. The number of I/O operations per second (IOPS) to provision for GP3 volume.
	iops?: null | float64 @go(Iops,*float64)

	// Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used.
	kmsKeyArn?: null | string @go(KMSKeyArn,*string)

	// Optional. The size of the volume, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
	sizeGib?: null | float64 @go(SizeGib,*float64)

	// Optional. Type of the EBS volume. When unspecified, it defaults to GP2 volume. Possible values: VOLUME_TYPE_UNSPECIFIED, GP2, GP3
	volumeType?: null | string @go(VolumeType,*string)
}

#ConfigRootVolumeObservation: {
	// Optional. The number of I/O operations per second (IOPS) to provision for GP3 volume.
	iops?: null | float64 @go(Iops,*float64)

	// Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used.
	kmsKeyArn?: null | string @go(KMSKeyArn,*string)

	// Optional. The size of the volume, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
	sizeGib?: null | float64 @go(SizeGib,*float64)

	// Optional. Type of the EBS volume. When unspecified, it defaults to GP2 volume. Possible values: VOLUME_TYPE_UNSPECIFIED, GP2, GP3
	volumeType?: null | string @go(VolumeType,*string)
}

#ConfigRootVolumeParameters: {
	// Optional. The number of I/O operations per second (IOPS) to provision for GP3 volume.
	// +kubebuilder:validation:Optional
	iops?: null | float64 @go(Iops,*float64)

	// Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used.
	// +kubebuilder:validation:Optional
	kmsKeyArn?: null | string @go(KMSKeyArn,*string)

	// Optional. The size of the volume, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
	// +kubebuilder:validation:Optional
	sizeGib?: null | float64 @go(SizeGib,*float64)

	// Optional. Type of the EBS volume. When unspecified, it defaults to GP2 volume. Possible values: VOLUME_TYPE_UNSPECIFIED, GP2, GP3
	// +kubebuilder:validation:Optional
	volumeType?: null | string @go(VolumeType,*string)
}

#ConfigSSHConfigInitParameters: {
	// The name of the EC2 key pair used to login into cluster machines.
	ec2KeyPair?: null | string @go(EC2KeyPair,*string)
}

#ConfigSSHConfigObservation: {
	// The name of the EC2 key pair used to login into cluster machines.
	ec2KeyPair?: null | string @go(EC2KeyPair,*string)
}

#ConfigSSHConfigParameters: {
	// The name of the EC2 key pair used to login into cluster machines.
	// +kubebuilder:validation:Optional
	ec2KeyPair?: null | string @go(EC2KeyPair,*string)
}

#MaxPodsConstraintInitParameters: {
	// The maximum number of pods to schedule on a single node.
	maxPodsPerNode?: null | float64 @go(MaxPodsPerNode,*float64)
}

#MaxPodsConstraintObservation: {
	// The maximum number of pods to schedule on a single node.
	maxPodsPerNode?: null | float64 @go(MaxPodsPerNode,*float64)
}

#MaxPodsConstraintParameters: {
	// The maximum number of pods to schedule on a single node.
	// +kubebuilder:validation:Optional
	maxPodsPerNode?: null | float64 @go(MaxPodsPerNode,*float64)
}

#NodePoolInitParameters: {
	// Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix  and name , separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
	annotations?: {[string]: null | string} @go(Annotations,map[string]*string)

	// Autoscaler configuration for this node pool.
	autoscaling?: [...#AutoscalingInitParameters] @go(Autoscaling,[]AutoscalingInitParameters)

	// The configuration of the node pool.
	config?: [...#ConfigInitParameters] @go(Config,[]ConfigInitParameters)

	// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
	maxPodsConstraint?: [...#MaxPodsConstraintInitParameters] @go(MaxPodsConstraint,[]MaxPodsConstraintInitParameters)

	// The project for the resource
	project?: null | string @go(Project,*string)

	// The subnet where the node pool node run.
	subnetId?: null | string @go(SubnetID,*string)

	// The Kubernetes version to run on this node pool (e.g. 1.19.10-gke.1000). You can list all supported versions on a given Google Cloud region by calling GetAwsServerConfig.
	version?: null | string @go(Version,*string)
}

#NodePoolObservation: {
	// Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix  and name , separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
	annotations?: {[string]: null | string} @go(Annotations,map[string]*string)

	// Autoscaler configuration for this node pool.
	autoscaling?: [...#AutoscalingObservation] @go(Autoscaling,[]AutoscalingObservation)

	// The awsCluster for the resource
	cluster?: null | string @go(Cluster,*string)

	// The configuration of the node pool.
	config?: [...#ConfigObservation] @go(Config,[]ConfigObservation)

	// Output only. The time at which this node pool was created.
	createTime?: null | string @go(CreateTime,*string)

	// Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
	etag?: null | string @go(Etag,*string)

	// an identifier for the resource with format projects/{{project}}/locations/{{location}}/awsClusters/{{cluster}}/awsNodePools/{{name}}
	id?: null | string @go(ID,*string)

	// The location for the resource
	location?: null | string @go(Location,*string)

	// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
	maxPodsConstraint?: [...#MaxPodsConstraintObservation] @go(MaxPodsConstraint,[]MaxPodsConstraintObservation)

	// The project for the resource
	project?: null | string @go(Project,*string)

	// Output only. If set, there are currently changes in flight to the node pool.
	reconciling?: null | bool @go(Reconciling,*bool)

	// Output only. The lifecycle state of the node pool. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
	state?: null | string @go(State,*string)

	// The subnet where the node pool node run.
	subnetId?: null | string @go(SubnetID,*string)

	// Output only. A globally unique identifier for the node pool.
	uid?: null | string @go(UID,*string)

	// Output only. The time at which this node pool was last updated.
	updateTime?: null | string @go(UpdateTime,*string)

	// The Kubernetes version to run on this node pool (e.g. 1.19.10-gke.1000). You can list all supported versions on a given Google Cloud region by calling GetAwsServerConfig.
	version?: null | string @go(Version,*string)
}

#NodePoolParameters: {
	// Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix  and name , separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
	// +kubebuilder:validation:Optional
	annotations?: {[string]: null | string} @go(Annotations,map[string]*string)

	// Autoscaler configuration for this node pool.
	// +kubebuilder:validation:Optional
	autoscaling?: [...#AutoscalingParameters] @go(Autoscaling,[]AutoscalingParameters)

	// The awsCluster for the resource
	// +crossplane:generate:reference:type=Cluster
	// +kubebuilder:validation:Optional
	cluster?: null | string @go(Cluster,*string)

	// The configuration of the node pool.
	// +kubebuilder:validation:Optional
	config?: [...#ConfigParameters] @go(Config,[]ConfigParameters)

	// The location for the resource
	// +kubebuilder:validation:Required
	location?: null | string @go(Location,*string)

	// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
	// +kubebuilder:validation:Optional
	maxPodsConstraint?: [...#MaxPodsConstraintParameters] @go(MaxPodsConstraint,[]MaxPodsConstraintParameters)

	// The project for the resource
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The subnet where the node pool node run.
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)

	// The Kubernetes version to run on this node pool (e.g. 1.19.10-gke.1000). You can list all supported versions on a given Google Cloud region by calling GetAwsServerConfig.
	// +kubebuilder:validation:Optional
	version?: null | string @go(Version,*string)
}

#TaintsInitParameters: {
	// The taint effect. Possible values: EFFECT_UNSPECIFIED, NO_SCHEDULE, PREFER_NO_SCHEDULE, NO_EXECUTE
	effect?: null | string @go(Effect,*string)

	// Key for the taint.
	key?: null | string @go(Key,*string)

	// Value for the taint.
	value?: null | string @go(Value,*string)
}

#TaintsObservation: {
	// The taint effect. Possible values: EFFECT_UNSPECIFIED, NO_SCHEDULE, PREFER_NO_SCHEDULE, NO_EXECUTE
	effect?: null | string @go(Effect,*string)

	// Key for the taint.
	key?: null | string @go(Key,*string)

	// Value for the taint.
	value?: null | string @go(Value,*string)
}

#TaintsParameters: {
	// The taint effect. Possible values: EFFECT_UNSPECIFIED, NO_SCHEDULE, PREFER_NO_SCHEDULE, NO_EXECUTE
	// +kubebuilder:validation:Optional
	effect?: null | string @go(Effect,*string)

	// Key for the taint.
	// +kubebuilder:validation:Optional
	key?: null | string @go(Key,*string)

	// Value for the taint.
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

// NodePoolSpec defines the desired state of NodePool
#NodePoolSpec: {
	forProvider: #NodePoolParameters @go(ForProvider)

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
	initProvider?: #NodePoolInitParameters @go(InitProvider)
}

// NodePoolStatus defines the observed state of NodePool.
#NodePoolStatus: {
	atProvider?: #NodePoolObservation @go(AtProvider)
}

// NodePool is the Schema for the NodePools API. An Anthos node pool running on AWS.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#NodePool: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.autoscaling) || has(self.initProvider.autoscaling)",message="autoscaling is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.config) || has(self.initProvider.config)",message="config is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.maxPodsConstraint) || has(self.initProvider.maxPodsConstraint)",message="maxPodsConstraint is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.subnetId) || has(self.initProvider.subnetId)",message="subnetId is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.version) || has(self.initProvider.version)",message="version is a required parameter"
	spec:    #NodePoolSpec   @go(Spec)
	status?: #NodePoolStatus @go(Status)
}

// NodePoolList contains a list of NodePools
#NodePoolList: {
	items: [...#NodePool] @go(Items,[]NodePool)
}
