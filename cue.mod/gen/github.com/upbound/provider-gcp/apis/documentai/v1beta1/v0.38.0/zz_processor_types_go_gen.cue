// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/documentai/v1beta1

package v1beta1

#ProcessorInitParameters: {
	// The display name. Must be unique.
	displayName?: null | string @go(DisplayName,*string)

	// The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.
	kmsKeyName?: null | string @go(KMSKeyName,*string)

	// The location of the resource.
	location?: null | string @go(Location,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The type of processor. For possible types see the official list
	type?: null | string @go(Type,*string)
}

#ProcessorObservation: {
	// The display name. Must be unique.
	displayName?: null | string @go(DisplayName,*string)

	// an identifier for the resource with format projects/{{project}}/locations/{{location}}/processors/{{name}}
	id?: null | string @go(ID,*string)

	// The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.
	kmsKeyName?: null | string @go(KMSKeyName,*string)

	// The location of the resource.
	location?: null | string @go(Location,*string)

	// The resource name of the processor.
	name?: null | string @go(Name,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The type of processor. For possible types see the official list
	type?: null | string @go(Type,*string)
}

#ProcessorParameters: {
	// The display name. Must be unique.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.
	// +kubebuilder:validation:Optional
	kmsKeyName?: null | string @go(KMSKeyName,*string)

	// The location of the resource.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The type of processor. For possible types see the official list
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

// ProcessorSpec defines the desired state of Processor
#ProcessorSpec: {
	forProvider: #ProcessorParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #ProcessorInitParameters @go(InitProvider)
}

// ProcessorStatus defines the observed state of Processor.
#ProcessorStatus: {
	atProvider?: #ProcessorObservation @go(AtProvider)
}

// Processor is the Schema for the Processors API. The first-class citizen for Document AI.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Processor: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.displayName) || (has(self.initProvider) && has(self.initProvider.displayName))",message="spec.forProvider.displayName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.type) || (has(self.initProvider) && has(self.initProvider.type))",message="spec.forProvider.type is a required parameter"
	spec:    #ProcessorSpec   @go(Spec)
	status?: #ProcessorStatus @go(Status)
}

// ProcessorList contains a list of Processors
#ProcessorList: {
	items: [...#Processor] @go(Items,[]Processor)
}
