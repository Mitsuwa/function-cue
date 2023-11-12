// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#VirtualHubSecurityPartnerProviderInitParameters: {
	// The Azure Region where the Security Partner Provider should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The security provider name. Possible values are ZScaler, IBoss and Checkpoint is allowed. Changing this forces a new resource to be created.
	securityProviderName?: null | string @go(SecurityProviderName,*string)

	// A mapping of tags which should be assigned to the Security Partner Provider.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#VirtualHubSecurityPartnerProviderObservation: {
	// The ID of the Security Partner Provider.
	id?: null | string @go(ID,*string)

	// The Azure Region where the Security Partner Provider should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name of the Resource Group where the Security Partner Provider should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The security provider name. Possible values are ZScaler, IBoss and Checkpoint is allowed. Changing this forces a new resource to be created.
	securityProviderName?: null | string @go(SecurityProviderName,*string)

	// A mapping of tags which should be assigned to the Security Partner Provider.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The ID of the Virtual Hub within which this Security Partner Provider should be created. Changing this forces a new resource to be created.
	virtualHubId?: null | string @go(VirtualHubID,*string)
}

#VirtualHubSecurityPartnerProviderParameters: {
	// The Azure Region where the Security Partner Provider should exist. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the Resource Group where the Security Partner Provider should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The security provider name. Possible values are ZScaler, IBoss and Checkpoint is allowed. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	securityProviderName?: null | string @go(SecurityProviderName,*string)

	// A mapping of tags which should be assigned to the Security Partner Provider.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The ID of the Virtual Hub within which this Security Partner Provider should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.VirtualHub
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	virtualHubId?: null | string @go(VirtualHubID,*string)
}

// VirtualHubSecurityPartnerProviderSpec defines the desired state of VirtualHubSecurityPartnerProvider
#VirtualHubSecurityPartnerProviderSpec: {
	forProvider: #VirtualHubSecurityPartnerProviderParameters @go(ForProvider)

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
	initProvider?: #VirtualHubSecurityPartnerProviderInitParameters @go(InitProvider)
}

// VirtualHubSecurityPartnerProviderStatus defines the observed state of VirtualHubSecurityPartnerProvider.
#VirtualHubSecurityPartnerProviderStatus: {
	atProvider?: #VirtualHubSecurityPartnerProviderObservation @go(AtProvider)
}

// VirtualHubSecurityPartnerProvider is the Schema for the VirtualHubSecurityPartnerProviders API. Manages a Security Partner Provider which could be associated to virtual hub.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#VirtualHubSecurityPartnerProvider: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.securityProviderName) || (has(self.initProvider) && has(self.initProvider.securityProviderName))",message="spec.forProvider.securityProviderName is a required parameter"
	spec:    #VirtualHubSecurityPartnerProviderSpec   @go(Spec)
	status?: #VirtualHubSecurityPartnerProviderStatus @go(Status)
}

// VirtualHubSecurityPartnerProviderList contains a list of VirtualHubSecurityPartnerProviders
#VirtualHubSecurityPartnerProviderList: {
	items: [...#VirtualHubSecurityPartnerProvider] @go(Items,[]VirtualHubSecurityPartnerProvider)
}
