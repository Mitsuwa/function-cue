// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/bigtable/v1beta1

package v1beta1

#TableIAMPolicyObservation: {
	// (Computed) The etag of the tables's IAM policy.
	etag?: null | string @go(Etag,*string)
	id?:   null | string @go(ID,*string)

	// The name or relative resource id of the instance that owns the table.
	instance?: null | string @go(Instance,*string)

	// The policy data generated by a google_iam_policy data source.
	policyData?: null | string @go(PolicyData,*string)

	// The project in which the table belongs.
	project?: null | string @go(Project,*string)

	// The name or relative resource id of the table to manage IAM policies for.
	table?: null | string @go(Table,*string)
}

#TableIAMPolicyParameters: {
	// The name or relative resource id of the instance that owns the table.
	// +kubebuilder:validation:Optional
	instance?: null | string @go(Instance,*string)

	// The policy data generated by a google_iam_policy data source.
	// +kubebuilder:validation:Optional
	policyData?: null | string @go(PolicyData,*string)

	// The project in which the table belongs.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The name or relative resource id of the table to manage IAM policies for.
	// +kubebuilder:validation:Required
	table?: null | string @go(Table,*string)
}

// TableIAMPolicySpec defines the desired state of TableIAMPolicy
#TableIAMPolicySpec: {
	forProvider: #TableIAMPolicyParameters @go(ForProvider)
}

// TableIAMPolicyStatus defines the observed state of TableIAMPolicy.
#TableIAMPolicyStatus: {
	atProvider?: #TableIAMPolicyObservation @go(AtProvider)
}

// TableIAMPolicy is the Schema for the TableIAMPolicys API. Collection of resources to manage IAM policy for a Bigtable Table.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#TableIAMPolicy: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.instance)",message="instance is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.policyData)",message="policyData is a required parameter"
	spec:    #TableIAMPolicySpec   @go(Spec)
	status?: #TableIAMPolicyStatus @go(Status)
}

// TableIAMPolicyList contains a list of TableIAMPolicys
#TableIAMPolicyList: {
	items: [...#TableIAMPolicy] @go(Items,[]TableIAMPolicy)
}
