// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/neptune/v1beta1

package v1beta1

#ParameterGroupObservation: {
	// The Neptune parameter group Amazon Resource Name (ARN).
	arn?: null | string @go(Arn,*string)

	// The description of the Neptune parameter group.
	description?: null | string @go(Description,*string)

	// The family of the Neptune parameter group.
	family?: null | string @go(Family,*string)

	// The Neptune parameter group name.
	id?: null | string @go(ID,*string)

	// A list of Neptune parameters to apply.
	parameter?: [...#ParameterGroupParameterObservation] @go(Parameter,[]ParameterGroupParameterObservation)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#ParameterGroupParameterObservation: {
	// The apply method of the Neptune parameter. Valid values are immediate and pending-reboot. Defaults to pending-reboot.
	applyMethod?: null | string @go(ApplyMethod,*string)

	// The name of the Neptune parameter group.
	name?: null | string @go(Name,*string)

	// The value of the Neptune parameter.
	value?: null | string @go(Value,*string)
}

#ParameterGroupParameterParameters: {
	// The apply method of the Neptune parameter. Valid values are immediate and pending-reboot. Defaults to pending-reboot.
	// +kubebuilder:validation:Optional
	applyMethod?: null | string @go(ApplyMethod,*string)

	// The name of the Neptune parameter group.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The value of the Neptune parameter.
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

#ParameterGroupParameters: {
	// The description of the Neptune parameter group.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The family of the Neptune parameter group.
	// +kubebuilder:validation:Optional
	family?: null | string @go(Family,*string)

	// A list of Neptune parameters to apply.
	// +kubebuilder:validation:Optional
	parameter?: [...#ParameterGroupParameterParameters] @go(Parameter,[]ParameterGroupParameterParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// ParameterGroupSpec defines the desired state of ParameterGroup
#ParameterGroupSpec: {
	forProvider: #ParameterGroupParameters @go(ForProvider)
}

// ParameterGroupStatus defines the observed state of ParameterGroup.
#ParameterGroupStatus: {
	atProvider?: #ParameterGroupObservation @go(AtProvider)
}

// ParameterGroup is the Schema for the ParameterGroups API. Manages a Neptune Parameter Group
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ParameterGroup: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.family)",message="family is a required parameter"
	spec:    #ParameterGroupSpec   @go(Spec)
	status?: #ParameterGroupStatus @go(Status)
}

// ParameterGroupList contains a list of ParameterGroups
#ParameterGroupList: {
	items: [...#ParameterGroup] @go(Items,[]ParameterGroup)
}
