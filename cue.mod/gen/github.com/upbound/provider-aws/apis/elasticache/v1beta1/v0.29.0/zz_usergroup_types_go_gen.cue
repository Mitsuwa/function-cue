// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/elasticache/v1beta1

package v1beta1

#UserGroupObservation: {
	// The user group identifier.
	id?: null | string @go(ID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#UserGroupParameters: {
	// The ARN that identifies the user group.
	// +kubebuilder:validation:Optional
	arn?: null | string @go(Arn,*string)

	// The current supported value is REDIS.
	// +kubebuilder:validation:Required
	engine?: null | string @go(Engine,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The list of user IDs that belong to the user group.
	// +crossplane:generate:reference:type=User
	// +crossplane:generate:reference:refFieldName=UserIDRefs
	// +crossplane:generate:reference:selectorFieldName=UserIDSelector
	// +kubebuilder:validation:Optional
	userIds?: [...null | string] @go(UserIds,[]*string)
}

// UserGroupSpec defines the desired state of UserGroup
#UserGroupSpec: {
	forProvider: #UserGroupParameters @go(ForProvider)
}

// UserGroupStatus defines the observed state of UserGroup.
#UserGroupStatus: {
	atProvider?: #UserGroupObservation @go(AtProvider)
}

// UserGroup is the Schema for the UserGroups API. Provides an ElastiCache user group.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#UserGroup: {
	spec:    #UserGroupSpec   @go(Spec)
	status?: #UserGroupStatus @go(Status)
}

// UserGroupList contains a list of UserGroups
#UserGroupList: {
	items: [...#UserGroup] @go(Items,[]UserGroup)
}
