// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/apimanagement/v1beta1

package v1beta1

#IdentityProviderGoogleObservation: {
	// The Name of the API Management Service where this Google Identity Provider should be created. Changing this forces a new resource to be created.
	apiManagementName?: null | string @go(APIManagementName,*string)

	// Client Id for Google Sign-in.
	clientId?: null | string @go(ClientID,*string)

	// The ID of the API Management Google Identity Provider.
	id?: null | string @go(ID,*string)

	// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)
}

#IdentityProviderGoogleParameters: {
	// The Name of the API Management Service where this Google Identity Provider should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/apimanagement/v1beta1.Management
	// +kubebuilder:validation:Optional
	apiManagementName?: null | string @go(APIManagementName,*string)

	// Client Id for Google Sign-in.
	// +kubebuilder:validation:Optional
	clientId?: null | string @go(ClientID,*string)

	// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)
}

// IdentityProviderGoogleSpec defines the desired state of IdentityProviderGoogle
#IdentityProviderGoogleSpec: {
	forProvider: #IdentityProviderGoogleParameters @go(ForProvider)
}

// IdentityProviderGoogleStatus defines the observed state of IdentityProviderGoogle.
#IdentityProviderGoogleStatus: {
	atProvider?: #IdentityProviderGoogleObservation @go(AtProvider)
}

// IdentityProviderGoogle is the Schema for the IdentityProviderGoogles API. Manages an API Management Google Identity Provider.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#IdentityProviderGoogle: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.clientId)",message="clientId is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.clientSecretSecretRef)",message="clientSecretSecretRef is a required parameter"
	spec:    #IdentityProviderGoogleSpec   @go(Spec)
	status?: #IdentityProviderGoogleStatus @go(Status)
}

// IdentityProviderGoogleList contains a list of IdentityProviderGoogles
#IdentityProviderGoogleList: {
	items: [...#IdentityProviderGoogle] @go(Items,[]IdentityProviderGoogle)
}
