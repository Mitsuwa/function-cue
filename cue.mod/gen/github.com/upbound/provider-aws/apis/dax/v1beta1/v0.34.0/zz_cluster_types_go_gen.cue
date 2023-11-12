// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/dax/v1beta1

package v1beta1

#ClusterObservation: {
	// The ARN of the DAX cluster
	arn?: null | string @go(Arn,*string)

	// List of Availability Zones in which the
	// nodes will be created
	availabilityZones?: [...null | string] @go(AvailabilityZones,[]*string)

	// The DNS name of the DAX cluster without the port appended
	clusterAddress?: null | string @go(ClusterAddress,*string)

	// –  The type of encryption the
	// cluster's endpoint should support. Valid values are: NONE and TLS.
	// Default value is NONE.
	clusterEndpointEncryptionType?: null | string @go(ClusterEndpointEncryptionType,*string)

	// The configuration endpoint for this DAX cluster,
	// consisting of a DNS name and a port number
	configurationEndpoint?: null | string @go(ConfigurationEndpoint,*string)

	// –  Description for the cluster
	description?: null | string @go(Description,*string)

	// A valid Amazon Resource Name (ARN) that identifies
	// an IAM role. At runtime, DAX will assume this role and use the role's
	// permissions to access DynamoDB on your behalf
	iamRoleArn?: null | string @go(IAMRoleArn,*string)
	id?:         null | string @go(ID,*string)

	// ddd:hh24:mi
	// (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example:
	// sun:05:00-sun:09:00
	maintenanceWindow?: null | string @go(MaintenanceWindow,*string)

	// –  The compute and memory capacity of the nodes. See
	// Nodes for supported node types
	nodeType?: null | string @go(NodeType,*string)

	// List of node objects including id, address, port and
	// availability_zone. Referenceable e.g., as
	// ${aws_dax_cluster.test.nodes.0.address}
	nodes?: [...#NodesObservation] @go(Nodes,[]NodesObservation)

	// east-1:012345678999:my_sns_topic
	notificationTopicArn?: null | string @go(NotificationTopicArn,*string)

	// –  Name of the parameter group to associate
	// with this DAX cluster
	parameterGroupName?: null | string @go(ParameterGroupName,*string)

	// The port used by the configuration endpoint
	port?: null | float64 @go(Port,*float64)

	// node cluster, without any read
	// replicas
	replicationFactor?: null | float64 @go(ReplicationFactor,*float64)

	// –  One or more VPC security groups associated
	// with the cluster
	securityGroupIds?: [...null | string] @go(SecurityGroupIds,[]*string)

	// Encrypt at rest options
	serverSideEncryption?: [...#ServerSideEncryptionObservation] @go(ServerSideEncryption,[]ServerSideEncryptionObservation)

	// –  Name of the subnet group to be used for the
	// cluster
	subnetGroupName?: null | string @go(SubnetGroupName,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#ClusterParameters: {
	// List of Availability Zones in which the
	// nodes will be created
	// +kubebuilder:validation:Optional
	availabilityZones?: [...null | string] @go(AvailabilityZones,[]*string)

	// –  The type of encryption the
	// cluster's endpoint should support. Valid values are: NONE and TLS.
	// Default value is NONE.
	// +kubebuilder:validation:Optional
	clusterEndpointEncryptionType?: null | string @go(ClusterEndpointEncryptionType,*string)

	// –  Description for the cluster
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A valid Amazon Resource Name (ARN) that identifies
	// an IAM role. At runtime, DAX will assume this role and use the role's
	// permissions to access DynamoDB on your behalf
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	iamRoleArn?: null | string @go(IAMRoleArn,*string)

	// ddd:hh24:mi
	// (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example:
	// sun:05:00-sun:09:00
	// +kubebuilder:validation:Optional
	maintenanceWindow?: null | string @go(MaintenanceWindow,*string)

	// –  The compute and memory capacity of the nodes. See
	// Nodes for supported node types
	// +kubebuilder:validation:Optional
	nodeType?: null | string @go(NodeType,*string)

	// east-1:012345678999:my_sns_topic
	// +kubebuilder:validation:Optional
	notificationTopicArn?: null | string @go(NotificationTopicArn,*string)

	// –  Name of the parameter group to associate
	// with this DAX cluster
	// +kubebuilder:validation:Optional
	parameterGroupName?: null | string @go(ParameterGroupName,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// node cluster, without any read
	// replicas
	// +kubebuilder:validation:Optional
	replicationFactor?: null | float64 @go(ReplicationFactor,*float64)

	// –  One or more VPC security groups associated
	// with the cluster
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.SecurityGroup
	// +crossplane:generate:reference:refFieldName=SecurityGroupIDRefs
	// +crossplane:generate:reference:selectorFieldName=SecurityGroupIDSelector
	// +kubebuilder:validation:Optional
	securityGroupIds?: [...null | string] @go(SecurityGroupIds,[]*string)

	// Encrypt at rest options
	// +kubebuilder:validation:Optional
	serverSideEncryption?: [...#ServerSideEncryptionParameters] @go(ServerSideEncryption,[]ServerSideEncryptionParameters)

	// –  Name of the subnet group to be used for the
	// cluster
	// +kubebuilder:validation:Optional
	subnetGroupName?: null | string @go(SubnetGroupName,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#NodesObservation: {
	address?:          null | string @go(Address,*string)
	availabilityZone?: null | string @go(AvailabilityZone,*string)
	id?:               null | string @go(ID,*string)

	// The port used by the configuration endpoint
	port?: null | float64 @go(Port,*float64)
}

#NodesParameters: {
}

#ServerSideEncryptionObservation: {
	// Whether to enable encryption at rest. Defaults to false.
	enabled?: null | bool @go(Enabled,*bool)
}

#ServerSideEncryptionParameters: {
	// Whether to enable encryption at rest. Defaults to false.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)
}

// ClusterSpec defines the desired state of Cluster
#ClusterSpec: {
	forProvider: #ClusterParameters @go(ForProvider)
}

// ClusterStatus defines the observed state of Cluster.
#ClusterStatus: {
	atProvider?: #ClusterObservation @go(AtProvider)
}

// Cluster is the Schema for the Clusters API. Provides an DAX Cluster resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Cluster: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.nodeType)",message="nodeType is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.replicationFactor)",message="replicationFactor is a required parameter"
	spec:    #ClusterSpec   @go(Spec)
	status?: #ClusterStatus @go(Status)
}

// ClusterList contains a list of Clusters
#ClusterList: {
	items: [...#Cluster] @go(Items,[]Cluster)
}
