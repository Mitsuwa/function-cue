// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/apimanagement/v1beta1

package v1beta1

#IdentityProviderMicrosoftInitParameters: {
	// Client Id of the Azure AD Application.
	clientId?: null | string @go(ClientID,*string)
}

#IdentityProviderMicrosoftObservation: {
	// The Name of the API Management Service where this Microsoft Identity Provider should be created. Changing this forces a new resource to be created.
	apiManagementName?: null | string @go(APIManagementName,*string)

	// Client Id of the Azure AD Application.
	clientId?: null | string @go(ClientID,*string)

	// The ID of the API Management Microsoft Identity Provider.
	id?: null | string @go(ID,*string)

	// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)
}

#IdentityProviderMicrosoftParameters: {
	// The Name of the API Management Service where this Microsoft Identity Provider should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/apimanagement/v1beta1.Management
	// +kubebuilder:validation:Optional
	apiManagementName?: null | string @go(APIManagementName,*string)

	// Client Id of the Azure AD Application.
	// +kubebuilder:validation:Optional
	clientId?: null | string @go(ClientID,*string)

	// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)
}

// IdentityProviderMicrosoftSpec defines the desired state of IdentityProviderMicrosoft
#IdentityProviderMicrosoftSpec: {
	forProvider: #IdentityProviderMicrosoftParameters @go(ForProvider)

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
	initProvider?: #IdentityProviderMicrosoftInitParameters @go(InitProvider)
}

// IdentityProviderMicrosoftStatus defines the observed state of IdentityProviderMicrosoft.
#IdentityProviderMicrosoftStatus: {
	atProvider?: #IdentityProviderMicrosoftObservation @go(AtProvider)
}

// IdentityProviderMicrosoft is the Schema for the IdentityProviderMicrosofts API. Manages an API Management Microsoft Identity Provider.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#IdentityProviderMicrosoft: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.clientId) || has(self.initProvider.clientId)",message="clientId is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.clientSecretSecretRef)",message="clientSecretSecretRef is a required parameter"
	spec:    #IdentityProviderMicrosoftSpec   @go(Spec)
	status?: #IdentityProviderMicrosoftStatus @go(Status)
}

// IdentityProviderMicrosoftList contains a list of IdentityProviderMicrosofts
#IdentityProviderMicrosoftList: {
	items: [...#IdentityProviderMicrosoft] @go(Items,[]IdentityProviderMicrosoft)
}
