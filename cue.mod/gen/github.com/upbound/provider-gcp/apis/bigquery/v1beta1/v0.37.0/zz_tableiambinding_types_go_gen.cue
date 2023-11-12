// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/bigquery/v1beta1

package v1beta1

#TableIAMBindingConditionInitParameters: {
	description?: null | string @go(Description,*string)
	expression?:  null | string @go(Expression,*string)
	title?:       null | string @go(Title,*string)
}

#TableIAMBindingConditionObservation: {
	description?: null | string @go(Description,*string)
	expression?:  null | string @go(Expression,*string)
	title?:       null | string @go(Title,*string)
}

#TableIAMBindingConditionParameters: {
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// +kubebuilder:validation:Optional
	expression?: null | string @go(Expression,*string)

	// +kubebuilder:validation:Optional
	title?: null | string @go(Title,*string)
}

#TableIAMBindingInitParameters: {
	condition?: [...#TableIAMBindingConditionInitParameters] @go(Condition,[]TableIAMBindingConditionInitParameters)
	members?: [...null | string] @go(Members,[]*string)
	project?: null | string @go(Project,*string)
	role?:    null | string @go(Role,*string)
}

#TableIAMBindingObservation: {
	condition?: [...#TableIAMBindingConditionObservation] @go(Condition,[]TableIAMBindingConditionObservation)
	datasetId?: null | string @go(DatasetID,*string)
	etag?:      null | string @go(Etag,*string)
	id?:        null | string @go(ID,*string)
	members?: [...null | string] @go(Members,[]*string)
	project?: null | string @go(Project,*string)
	role?:    null | string @go(Role,*string)
	tableId?: null | string @go(TableID,*string)
}

#TableIAMBindingParameters: {
	// +kubebuilder:validation:Optional
	condition?: [...#TableIAMBindingConditionParameters] @go(Condition,[]TableIAMBindingConditionParameters)

	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/bigquery/v1beta1.Dataset
	// +kubebuilder:validation:Optional
	datasetId?: null | string @go(DatasetID,*string)

	// +kubebuilder:validation:Optional
	members?: [...null | string] @go(Members,[]*string)

	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// +kubebuilder:validation:Optional
	role?: null | string @go(Role,*string)

	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/bigquery/v1beta1.Table
	// +kubebuilder:validation:Optional
	tableId?: null | string @go(TableID,*string)
}

// TableIAMBindingSpec defines the desired state of TableIAMBinding
#TableIAMBindingSpec: {
	forProvider: #TableIAMBindingParameters @go(ForProvider)

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
	initProvider?: #TableIAMBindingInitParameters @go(InitProvider)
}

// TableIAMBindingStatus defines the observed state of TableIAMBinding.
#TableIAMBindingStatus: {
	atProvider?: #TableIAMBindingObservation @go(AtProvider)
}

// TableIAMBinding is the Schema for the TableIAMBindings API. <no value>
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#TableIAMBinding: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.members) || (has(self.initProvider) && has(self.initProvider.members))",message="spec.forProvider.members is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.role) || (has(self.initProvider) && has(self.initProvider.role))",message="spec.forProvider.role is a required parameter"
	spec:    #TableIAMBindingSpec   @go(Spec)
	status?: #TableIAMBindingStatus @go(Status)
}

// TableIAMBindingList contains a list of TableIAMBindings
#TableIAMBindingList: {
	items: [...#TableIAMBinding] @go(Items,[]TableIAMBinding)
}
