// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#ProjectMetadataInitParameters: {
	// A series of key value pairs.
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The ID of the project in which the resource belongs. If it
	// is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#ProjectMetadataObservation: {
	// an identifier for the resource with format {{project}}
	id?: null | string @go(ID,*string)

	// A series of key value pairs.
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The ID of the project in which the resource belongs. If it
	// is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#ProjectMetadataParameters: {
	// A series of key value pairs.
	// +kubebuilder:validation:Optional
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The ID of the project in which the resource belongs. If it
	// is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)
}

// ProjectMetadataSpec defines the desired state of ProjectMetadata
#ProjectMetadataSpec: {
	forProvider: #ProjectMetadataParameters @go(ForProvider)

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
	initProvider?: #ProjectMetadataInitParameters @go(InitProvider)
}

// ProjectMetadataStatus defines the observed state of ProjectMetadata.
#ProjectMetadataStatus: {
	atProvider?: #ProjectMetadataObservation @go(AtProvider)
}

// ProjectMetadata is the Schema for the ProjectMetadatas API. Manages common instance metadata
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#ProjectMetadata: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.metadata) || (has(self.initProvider) && has(self.initProvider.metadata))",message="spec.forProvider.metadata is a required parameter"
	spec:    #ProjectMetadataSpec   @go(Spec)
	status?: #ProjectMetadataStatus @go(Status)
}

// ProjectMetadataList contains a list of ProjectMetadatas
#ProjectMetadataList: {
	items: [...#ProjectMetadata] @go(Items,[]ProjectMetadata)
}
