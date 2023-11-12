// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/appplatform/v1beta1

package v1beta1

#SpringCloudAPIPortalCustomDomainInitParameters: {
	// The name which should be used for this Spring Cloud API Portal Domain. Changing this forces a new Spring Cloud API Portal Domain to be created.
	name?: null | string @go(Name,*string)

	// Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud API Portal Domain.
	thumbprint?: null | string @go(Thumbprint,*string)
}

#SpringCloudAPIPortalCustomDomainObservation: {
	// The ID of the Spring Cloud API Portal Domain.
	id?: null | string @go(ID,*string)

	// The name which should be used for this Spring Cloud API Portal Domain. Changing this forces a new Spring Cloud API Portal Domain to be created.
	name?: null | string @go(Name,*string)

	// The ID of the Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal Domain to be created.
	springCloudApiPortalId?: null | string @go(SpringCloudAPIPortalID,*string)

	// Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud API Portal Domain.
	thumbprint?: null | string @go(Thumbprint,*string)
}

#SpringCloudAPIPortalCustomDomainParameters: {
	// The name which should be used for this Spring Cloud API Portal Domain. Changing this forces a new Spring Cloud API Portal Domain to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The ID of the Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal Domain to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/appplatform/v1beta1.SpringCloudAPIPortal
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	springCloudApiPortalId?: null | string @go(SpringCloudAPIPortalID,*string)

	// Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud API Portal Domain.
	// +kubebuilder:validation:Optional
	thumbprint?: null | string @go(Thumbprint,*string)
}

// SpringCloudAPIPortalCustomDomainSpec defines the desired state of SpringCloudAPIPortalCustomDomain
#SpringCloudAPIPortalCustomDomainSpec: {
	forProvider: #SpringCloudAPIPortalCustomDomainParameters @go(ForProvider)

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
	initProvider?: #SpringCloudAPIPortalCustomDomainInitParameters @go(InitProvider)
}

// SpringCloudAPIPortalCustomDomainStatus defines the observed state of SpringCloudAPIPortalCustomDomain.
#SpringCloudAPIPortalCustomDomainStatus: {
	atProvider?: #SpringCloudAPIPortalCustomDomainObservation @go(AtProvider)
}

// SpringCloudAPIPortalCustomDomain is the Schema for the SpringCloudAPIPortalCustomDomains API. Manages a Spring Cloud API Portal Domain.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SpringCloudAPIPortalCustomDomain: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	spec:    #SpringCloudAPIPortalCustomDomainSpec   @go(Spec)
	status?: #SpringCloudAPIPortalCustomDomainStatus @go(Status)
}

// SpringCloudAPIPortalCustomDomainList contains a list of SpringCloudAPIPortalCustomDomains
#SpringCloudAPIPortalCustomDomainList: {
	items: [...#SpringCloudAPIPortalCustomDomain] @go(Items,[]SpringCloudAPIPortalCustomDomain)
}
