// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/apimanagement/v1beta1

package v1beta1

#APIOperationTagInitParameters: {
	// The display name of the API Management API Operation Tag.
	displayName?: null | string @go(DisplayName,*string)
}

#APIOperationTagObservation: {
	// The ID of the API Management API Operation. Changing this forces a new API Management API Operation Tag to be created.
	apiOperationId?: null | string @go(APIOperationID,*string)

	// The display name of the API Management API Operation Tag.
	displayName?: null | string @go(DisplayName,*string)

	// The ID of the API Management API Operation Tag.
	id?: null | string @go(ID,*string)
}

#APIOperationTagParameters: {
	// The ID of the API Management API Operation. Changing this forces a new API Management API Operation Tag to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/apimanagement/v1beta1.APIOperation
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	apiOperationId?: null | string @go(APIOperationID,*string)

	// The display name of the API Management API Operation Tag.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)
}

// APIOperationTagSpec defines the desired state of APIOperationTag
#APIOperationTagSpec: {
	forProvider: #APIOperationTagParameters @go(ForProvider)

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
	initProvider?: #APIOperationTagInitParameters @go(InitProvider)
}

// APIOperationTagStatus defines the observed state of APIOperationTag.
#APIOperationTagStatus: {
	atProvider?: #APIOperationTagObservation @go(AtProvider)
}

// APIOperationTag is the Schema for the APIOperationTags API. Manages a API Management API Operation Tag.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#APIOperationTag: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.displayName) || (has(self.initProvider) && has(self.initProvider.displayName))",message="spec.forProvider.displayName is a required parameter"
	spec:    #APIOperationTagSpec   @go(Spec)
	status?: #APIOperationTagStatus @go(Status)
}

// APIOperationTagList contains a list of APIOperationTags
#APIOperationTagList: {
	items: [...#APIOperationTag] @go(Items,[]APIOperationTag)
}
