// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/datastore/v1beta1

package v1beta1

#IndexObservation: {
	// Policy for including ancestors in the index.
	// Default value is NONE.
	// Possible values are: NONE, ALL_ANCESTORS.
	ancestor?: null | string @go(Ancestor,*string)

	// an identifier for the resource with format projects/{{project}}/indexes/{{index_id}}
	id?: null | string @go(ID,*string)

	// The index id.
	indexId?: null | string @go(IndexID,*string)

	// The entity kind which the index applies to.
	kind?: null | string @go(Kind,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// An ordered list of properties to index on.
	// Structure is documented below.
	properties?: [...#PropertiesObservation] @go(Properties,[]PropertiesObservation)
}

#IndexParameters: {
	// Policy for including ancestors in the index.
	// Default value is NONE.
	// Possible values are: NONE, ALL_ANCESTORS.
	// +kubebuilder:validation:Optional
	ancestor?: null | string @go(Ancestor,*string)

	// The entity kind which the index applies to.
	// +kubebuilder:validation:Optional
	kind?: null | string @go(Kind,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// An ordered list of properties to index on.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	properties?: [...#PropertiesParameters] @go(Properties,[]PropertiesParameters)
}

#PropertiesObservation: {
	// The direction the index should optimize for sorting.
	// Possible values are: ASCENDING, DESCENDING.
	direction?: null | string @go(Direction,*string)

	// The property name to index.
	name?: null | string @go(Name,*string)
}

#PropertiesParameters: {
	// The direction the index should optimize for sorting.
	// Possible values are: ASCENDING, DESCENDING.
	// +kubebuilder:validation:Required
	direction?: null | string @go(Direction,*string)

	// The property name to index.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)
}

// IndexSpec defines the desired state of Index
#IndexSpec: {
	forProvider: #IndexParameters @go(ForProvider)
}

// IndexStatus defines the observed state of Index.
#IndexStatus: {
	atProvider?: #IndexObservation @go(AtProvider)
}

// Index is the Schema for the Indexs API. Describes a composite index for Cloud Datastore.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Index: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.kind)",message="kind is a required parameter"
	spec:    #IndexSpec   @go(Spec)
	status?: #IndexStatus @go(Status)
}

// IndexList contains a list of Indexs
#IndexList: {
	items: [...#Index] @go(Items,[]Index)
}
