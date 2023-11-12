// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/bigquery/v1beta1

package v1beta1

#TableIAMPolicyInitParameters: {
	// The policy data generated by
	// a google_iam_policy data source.
	policyData?: null | string @go(PolicyData,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
	project?: null | string @go(Project,*string)
}

#TableIAMPolicyObservation: {
	datasetId?: null | string @go(DatasetID,*string)

	// (Computed) The etag of the IAM policy.
	etag?: null | string @go(Etag,*string)
	id?:   null | string @go(ID,*string)

	// The policy data generated by
	// a google_iam_policy data source.
	policyData?: null | string @go(PolicyData,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
	project?: null | string @go(Project,*string)
	tableId?: null | string @go(TableID,*string)
}

#TableIAMPolicyParameters: {
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/bigquery/v1beta1.Dataset
	// +kubebuilder:validation:Optional
	datasetId?: null | string @go(DatasetID,*string)

	// The policy data generated by
	// a google_iam_policy data source.
	// +kubebuilder:validation:Optional
	policyData?: null | string @go(PolicyData,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/bigquery/v1beta1.Table
	// +kubebuilder:validation:Optional
	tableId?: null | string @go(TableID,*string)
}

// TableIAMPolicySpec defines the desired state of TableIAMPolicy
#TableIAMPolicySpec: {
	forProvider: #TableIAMPolicyParameters @go(ForProvider)

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
	initProvider?: #TableIAMPolicyInitParameters @go(InitProvider)
}

// TableIAMPolicyStatus defines the observed state of TableIAMPolicy.
#TableIAMPolicyStatus: {
	atProvider?: #TableIAMPolicyObservation @go(AtProvider)
}

// TableIAMPolicy is the Schema for the TableIAMPolicys API. Collection of resources to manage IAM policy for BigQuery Table
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#TableIAMPolicy: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.policyData) || has(self.initProvider.policyData)",message="policyData is a required parameter"
	spec:    #TableIAMPolicySpec   @go(Spec)
	status?: #TableIAMPolicyStatus @go(Status)
}

// TableIAMPolicyList contains a list of TableIAMPolicys
#TableIAMPolicyList: {
	items: [...#TableIAMPolicy] @go(Items,[]TableIAMPolicy)
}
