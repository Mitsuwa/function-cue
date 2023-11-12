// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/rds/v1beta1

package v1beta1

#ParameterGroupObservation: {
	// The ARN of the db parameter group.
	arn?: null | string @go(Arn,*string)

	// The db parameter group name.
	id?: null | string @go(ID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#ParameterGroupParameters: {
	// The description of the DB parameter group.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The family of the DB parameter group.
	// +kubebuilder:validation:Required
	family?: null | string @go(Family,*string)

	// A list of DB parameters to apply. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via aws rds describe-db-parameters after initial creation of the group.
	// +kubebuilder:validation:Optional
	parameter?: [...#ParameterParameters] @go(Parameter,[]ParameterParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ParameterObservation: {
}

#ParameterParameters: {
	// "immediate" (default), or "pending-reboot". Some
	// engines can't apply some parameters without a reboot, and you will need to
	// specify "pending-reboot" here.
	// +kubebuilder:validation:Optional
	applyMethod?: null | string @go(ApplyMethod,*string)

	// The name of the DB parameter group.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The value of the DB parameter.
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

// ParameterGroupSpec defines the desired state of ParameterGroup
#ParameterGroupSpec: {
	forProvider: #ParameterGroupParameters @go(ForProvider)
}

// ParameterGroupStatus defines the observed state of ParameterGroup.
#ParameterGroupStatus: {
	atProvider?: #ParameterGroupObservation @go(AtProvider)
}

// ParameterGroup is the Schema for the ParameterGroups API. Provides an RDS DB parameter group resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ParameterGroup: {
	spec:    #ParameterGroupSpec   @go(Spec)
	status?: #ParameterGroupStatus @go(Status)
}

// ParameterGroupList contains a list of ParameterGroups
#ParameterGroupList: {
	items: [...#ParameterGroup] @go(Items,[]ParameterGroup)
}
