// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/route53recoveryreadiness/v1beta1

package v1beta1

#RecoveryGroupObservation: {
	// ARN of the recovery group
	arn?: null | string @go(Arn,*string)

	// List of cell arns to add as nested fault domains within this recovery group
	cells?: [...null | string] @go(Cells,[]*string)
	id?: null | string @go(ID,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#RecoveryGroupParameters: {
	// List of cell arns to add as nested fault domains within this recovery group
	// +kubebuilder:validation:Optional
	cells?: [...null | string] @go(Cells,[]*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// RecoveryGroupSpec defines the desired state of RecoveryGroup
#RecoveryGroupSpec: {
	forProvider: #RecoveryGroupParameters @go(ForProvider)
}

// RecoveryGroupStatus defines the observed state of RecoveryGroup.
#RecoveryGroupStatus: {
	atProvider?: #RecoveryGroupObservation @go(AtProvider)
}

// RecoveryGroup is the Schema for the RecoveryGroups API. Provides an AWS Route 53 Recovery Readiness Recovery Group
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#RecoveryGroup: {
	spec:    #RecoveryGroupSpec   @go(Spec)
	status?: #RecoveryGroupStatus @go(Status)
}

// RecoveryGroupList contains a list of RecoveryGroups
#RecoveryGroupList: {
	items: [...#RecoveryGroup] @go(Items,[]RecoveryGroup)
}
