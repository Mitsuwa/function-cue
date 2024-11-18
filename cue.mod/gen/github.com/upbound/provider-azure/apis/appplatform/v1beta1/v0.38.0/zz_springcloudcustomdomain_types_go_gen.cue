// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/appplatform/v1beta1

package v1beta1

#SpringCloudCustomDomainInitParameters: {
	// Specifies the name of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when thumbprint is specified
	certificateName?: null | string @go(CertificateName,*string)

	// Specifies the name of the Spring Cloud Custom Domain. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when certificate_name is specified. Changing this forces a new resource to be created.
	thumbprint?: null | string @go(Thumbprint,*string)
}

#SpringCloudCustomDomainObservation: {
	// Specifies the name of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when thumbprint is specified
	certificateName?: null | string @go(CertificateName,*string)

	// The ID of the Spring Cloud Custom Domain.
	id?: null | string @go(ID,*string)

	// Specifies the name of the Spring Cloud Custom Domain. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Specifies the resource ID of the Spring Cloud Application. Changing this forces a new resource to be created.
	springCloudAppId?: null | string @go(SpringCloudAppID,*string)

	// Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when certificate_name is specified. Changing this forces a new resource to be created.
	thumbprint?: null | string @go(Thumbprint,*string)
}

#SpringCloudCustomDomainParameters: {
	// Specifies the name of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when thumbprint is specified
	// +kubebuilder:validation:Optional
	certificateName?: null | string @go(CertificateName,*string)

	// Specifies the name of the Spring Cloud Custom Domain. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Specifies the resource ID of the Spring Cloud Application. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/appplatform/v1beta1.SpringCloudApp
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	springCloudAppId?: null | string @go(SpringCloudAppID,*string)

	// Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when certificate_name is specified. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	thumbprint?: null | string @go(Thumbprint,*string)
}

// SpringCloudCustomDomainSpec defines the desired state of SpringCloudCustomDomain
#SpringCloudCustomDomainSpec: {
	forProvider: #SpringCloudCustomDomainParameters @go(ForProvider)

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
	initProvider?: #SpringCloudCustomDomainInitParameters @go(InitProvider)
}

// SpringCloudCustomDomainStatus defines the observed state of SpringCloudCustomDomain.
#SpringCloudCustomDomainStatus: {
	atProvider?: #SpringCloudCustomDomainObservation @go(AtProvider)
}

// SpringCloudCustomDomain is the Schema for the SpringCloudCustomDomains API. Manages an Azure Spring Cloud Custom Domain.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SpringCloudCustomDomain: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	spec:    #SpringCloudCustomDomainSpec   @go(Spec)
	status?: #SpringCloudCustomDomainStatus @go(Status)
}

// SpringCloudCustomDomainList contains a list of SpringCloudCustomDomains
#SpringCloudCustomDomainList: {
	items: [...#SpringCloudCustomDomain] @go(Items,[]SpringCloudCustomDomain)
}
