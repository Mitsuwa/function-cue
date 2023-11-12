// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/marketplaceordering/v1beta1

package v1beta1

#MarketplaceAgreementInitParameters: {
	// The Offer of the Marketplace Image. Changing this forces a new resource to be created.
	offer?: null | string @go(Offer,*string)

	// The Plan of the Marketplace Image. Changing this forces a new resource to be created.
	plan?: null | string @go(Plan,*string)

	// The Publisher of the Marketplace Image. Changing this forces a new resource to be created.
	publisher?: null | string @go(Publisher,*string)
}

#MarketplaceAgreementObservation: {
	// The ID of the Marketplace Agreement.
	id?:              null | string @go(ID,*string)
	licenseTextLink?: null | string @go(LicenseTextLink,*string)

	// The Offer of the Marketplace Image. Changing this forces a new resource to be created.
	offer?: null | string @go(Offer,*string)

	// The Plan of the Marketplace Image. Changing this forces a new resource to be created.
	plan?:              null | string @go(Plan,*string)
	privacyPolicyLink?: null | string @go(PrivacyPolicyLink,*string)

	// The Publisher of the Marketplace Image. Changing this forces a new resource to be created.
	publisher?: null | string @go(Publisher,*string)
}

#MarketplaceAgreementParameters: {
	// The Offer of the Marketplace Image. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	offer?: null | string @go(Offer,*string)

	// The Plan of the Marketplace Image. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	plan?: null | string @go(Plan,*string)

	// The Publisher of the Marketplace Image. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	publisher?: null | string @go(Publisher,*string)
}

// MarketplaceAgreementSpec defines the desired state of MarketplaceAgreement
#MarketplaceAgreementSpec: {
	forProvider: #MarketplaceAgreementParameters @go(ForProvider)

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
	initProvider?: #MarketplaceAgreementInitParameters @go(InitProvider)
}

// MarketplaceAgreementStatus defines the observed state of MarketplaceAgreement.
#MarketplaceAgreementStatus: {
	atProvider?: #MarketplaceAgreementObservation @go(AtProvider)
}

// MarketplaceAgreement is the Schema for the MarketplaceAgreements API. Allows accepting the Legal Terms for a Marketplace Image.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MarketplaceAgreement: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.offer) || (has(self.initProvider) && has(self.initProvider.offer))",message="spec.forProvider.offer is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.plan) || (has(self.initProvider) && has(self.initProvider.plan))",message="spec.forProvider.plan is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.publisher) || (has(self.initProvider) && has(self.initProvider.publisher))",message="spec.forProvider.publisher is a required parameter"
	spec:    #MarketplaceAgreementSpec   @go(Spec)
	status?: #MarketplaceAgreementStatus @go(Status)
}

// MarketplaceAgreementList contains a list of MarketplaceAgreements
#MarketplaceAgreementList: {
	items: [...#MarketplaceAgreement] @go(Items,[]MarketplaceAgreement)
}
