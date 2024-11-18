// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/rds/v1beta1

package v1beta1

#SubnetGroupObservation: {
	// The ARN of the db subnet group.
	arn?: null | string @go(Arn,*string)

	// The description of the DB subnet group.
	description?: null | string @go(Description,*string)

	// The db subnet group name.
	id?: null | string @go(ID,*string)

	// A list of VPC subnet IDs.
	subnetIds?: [...null | string] @go(SubnetIds,[]*string)

	// The network type of the db subnet group.
	supportedNetworkTypes?: [...null | string] @go(SupportedNetworkTypes,[]*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#SubnetGroupParameters: {
	// The description of the DB subnet group.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// A list of VPC subnet IDs.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.Subnet
	// +crossplane:generate:reference:refFieldName=SubnetIDRefs
	// +crossplane:generate:reference:selectorFieldName=SubnetIDSelector
	// +kubebuilder:validation:Optional
	subnetIds?: [...null | string] @go(SubnetIds,[]*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// SubnetGroupSpec defines the desired state of SubnetGroup
#SubnetGroupSpec: {
	forProvider: #SubnetGroupParameters @go(ForProvider)
}

// SubnetGroupStatus defines the observed state of SubnetGroup.
#SubnetGroupStatus: {
	atProvider?: #SubnetGroupObservation @go(AtProvider)
}

// SubnetGroup is the Schema for the SubnetGroups API. Provides an RDS DB subnet group resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#SubnetGroup: {
	spec:    #SubnetGroupSpec   @go(Spec)
	status?: #SubnetGroupStatus @go(Status)
}

// SubnetGroupList contains a list of SubnetGroups
#SubnetGroupList: {
	items: [...#SubnetGroup] @go(Items,[]SubnetGroup)
}
