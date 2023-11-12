// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/glue/v1beta1

package v1beta1

#ConnectionObservation: {
	// The ARN of the Glue Connection.
	arn?: null | string @go(Arn,*string)

	// Catalog ID and name of the connection
	id?: null | string @go(ID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#ConnectionParameters: {
	// –  The ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default.
	// +kubebuilder:validation:Required
	catalogId?: null | string @go(CatalogID,*string)

	// –  The type of the connection. Supported are: CUSTOM, JDBC, KAFKA, MARKETPLACE, MONGODB, and NETWORK. Defaults to JBDC.
	// +kubebuilder:validation:Optional
	connectionType?: null | string @go(ConnectionType,*string)

	// –  Description of the connection.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// –  A list of criteria that can be used in selecting this connection.
	// +kubebuilder:validation:Optional
	matchCriteria?: [...null | string] @go(MatchCriteria,[]*string)

	// A map of physical connection requirements, such as VPC and SecurityGroup. Defined below.
	// +kubebuilder:validation:Optional
	physicalConnectionRequirements?: [...#PhysicalConnectionRequirementsParameters] @go(PhysicalConnectionRequirements,[]PhysicalConnectionRequirementsParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#PhysicalConnectionRequirementsObservation: {
}

#PhysicalConnectionRequirementsParameters: {
	// The availability zone of the connection. This field is redundant and implied by subnet_id, but is currently an api requirement.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("availability_zone",false)
	// +kubebuilder:validation:Optional
	availabilityZone?: null | string @go(AvailabilityZone,*string)

	// The security group ID list used by the connection.
	// +kubebuilder:validation:Optional
	securityGroupIdList?: [...null | string] @go(SecurityGroupIDList,[]*string)

	// The subnet ID used by the connection.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)
}

// ConnectionSpec defines the desired state of Connection
#ConnectionSpec: {
	forProvider: #ConnectionParameters @go(ForProvider)
}

// ConnectionStatus defines the observed state of Connection.
#ConnectionStatus: {
	atProvider?: #ConnectionObservation @go(AtProvider)
}

// Connection is the Schema for the Connections API. Provides an Glue Connection resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Connection: {
	spec:    #ConnectionSpec   @go(Spec)
	status?: #ConnectionStatus @go(Status)
}

// ConnectionList contains a list of Connections
#ConnectionList: {
	items: [...#Connection] @go(Items,[]Connection)
}
