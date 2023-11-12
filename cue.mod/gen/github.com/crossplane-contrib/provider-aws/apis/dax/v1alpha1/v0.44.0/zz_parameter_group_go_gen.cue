// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/dax/v1alpha1

package v1alpha1

// ParameterGroupParameters defines the desired state of ParameterGroup
#ParameterGroupParameters: {
	// Region is which region the ParameterGroup will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// A description of the parameter group.
	description?: null | string @go(Description,*string)

	#CustomParameterGroupParameters
}

// ParameterGroupSpec defines the desired state of ParameterGroup
#ParameterGroupSpec: {
	forProvider: #ParameterGroupParameters @go(ForProvider)
}

// ParameterGroupObservation defines the observed state of ParameterGroup
#ParameterGroupObservation: {
	// The name of the parameter group.
	parameterGroupName?: null | string @go(ParameterGroupName,*string)
}

// ParameterGroupStatus defines the observed state of ParameterGroup.
#ParameterGroupStatus: {
	atProvider?: #ParameterGroupObservation @go(AtProvider)
}

// ParameterGroup is the Schema for the ParameterGroups API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ParameterGroup: {
	spec:    #ParameterGroupSpec   @go(Spec)
	status?: #ParameterGroupStatus @go(Status)
}

// ParameterGroupList contains a list of ParameterGroups
#ParameterGroupList: {
	items: [...#ParameterGroup] @go(Items,[]ParameterGroup)
}
