// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/certificateregistration/v1beta1

package v1beta1

#AppServiceCertificateOrderInitParameters: {
	// true if the certificate should be automatically renewed when it expires; otherwise, false. Defaults to true.
	autoRenew?: null | bool @go(AutoRenew,*bool)

	// Last CSR that was created for this order.
	csr?: null | string @go(Csr,*string)

	// The Distinguished Name for the App Service Certificate Order.
	distinguishedName?: null | string @go(DistinguishedName,*string)

	// Certificate key size. Defaults to 2048.
	keySize?: null | float64 @go(KeySize,*float64)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Currently the only valid value is global.
	location?: null | string @go(Location,*string)

	// Certificate product type, such as Standard or WildCard.
	productType?: null | string @go(ProductType,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Duration in years (must be between 1 and 3). Defaults to 1.
	validityInYears?: null | float64 @go(ValidityInYears,*float64)
}

#AppServiceCertificateOrderObservation: {
	// Reasons why App Service Certificate is not renewable at the current moment.
	appServiceCertificateNotRenewableReasons?: [...null | string] @go(AppServiceCertificateNotRenewableReasons,[]*string)

	// true if the certificate should be automatically renewed when it expires; otherwise, false. Defaults to true.
	autoRenew?: null | bool @go(AutoRenew,*bool)

	// State of the Key Vault secret. A certificates block as defined below.
	certificates?: [...#CertificatesObservation] @go(Certificates,[]CertificatesObservation)

	// Last CSR that was created for this order.
	csr?: null | string @go(Csr,*string)

	// The Distinguished Name for the App Service Certificate Order.
	distinguishedName?: null | string @go(DistinguishedName,*string)

	// Domain verification token.
	domainVerificationToken?: null | string @go(DomainVerificationToken,*string)

	// Certificate expiration time.
	expirationTime?: null | string @go(ExpirationTime,*string)

	// The App Service Certificate Order ID.
	id?: null | string @go(ID,*string)

	// Certificate thumbprint intermediate certificate.
	intermediateThumbprint?: null | string @go(IntermediateThumbprint,*string)

	// Whether the private key is external or not.
	isPrivateKeyExternal?: null | bool @go(IsPrivateKeyExternal,*bool)

	// Certificate key size. Defaults to 2048.
	keySize?: null | float64 @go(KeySize,*float64)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Currently the only valid value is global.
	location?: null | string @go(Location,*string)

	// Certificate product type, such as Standard or WildCard.
	productType?: null | string @go(ProductType,*string)

	// The name of the resource group in which to create the certificate. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Certificate thumbprint for root certificate.
	rootThumbprint?: null | string @go(RootThumbprint,*string)

	// Certificate thumbprint for signed certificate.
	signedCertificateThumbprint?: null | string @go(SignedCertificateThumbprint,*string)

	// Current order status.
	status?: null | string @go(Status,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Duration in years (must be between 1 and 3). Defaults to 1.
	validityInYears?: null | float64 @go(ValidityInYears,*float64)
}

#AppServiceCertificateOrderParameters: {
	// true if the certificate should be automatically renewed when it expires; otherwise, false. Defaults to true.
	// +kubebuilder:validation:Optional
	autoRenew?: null | bool @go(AutoRenew,*bool)

	// Last CSR that was created for this order.
	// +kubebuilder:validation:Optional
	csr?: null | string @go(Csr,*string)

	// The Distinguished Name for the App Service Certificate Order.
	// +kubebuilder:validation:Optional
	distinguishedName?: null | string @go(DistinguishedName,*string)

	// Certificate key size. Defaults to 2048.
	// +kubebuilder:validation:Optional
	keySize?: null | float64 @go(KeySize,*float64)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Currently the only valid value is global.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Certificate product type, such as Standard or WildCard.
	// +kubebuilder:validation:Optional
	productType?: null | string @go(ProductType,*string)

	// The name of the resource group in which to create the certificate. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Duration in years (must be between 1 and 3). Defaults to 1.
	// +kubebuilder:validation:Optional
	validityInYears?: null | float64 @go(ValidityInYears,*float64)
}

#CertificatesInitParameters: {
}

#CertificatesObservation: {
	// The name of the App Service Certificate.
	certificateName?: null | string @go(CertificateName,*string)

	// Key Vault resource Id.
	keyVaultId?: null | string @go(KeyVaultID,*string)

	// Key Vault secret name.
	keyVaultSecretName?: null | string @go(KeyVaultSecretName,*string)

	// Status of the Key Vault secret.
	provisioningState?: null | string @go(ProvisioningState,*string)
}

#CertificatesParameters: {
}

// AppServiceCertificateOrderSpec defines the desired state of AppServiceCertificateOrder
#AppServiceCertificateOrderSpec: {
	forProvider: #AppServiceCertificateOrderParameters @go(ForProvider)

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
	initProvider?: #AppServiceCertificateOrderInitParameters @go(InitProvider)
}

// AppServiceCertificateOrderStatus defines the observed state of AppServiceCertificateOrder.
#AppServiceCertificateOrderStatus: {
	atProvider?: #AppServiceCertificateOrderObservation @go(AtProvider)
}

// AppServiceCertificateOrder is the Schema for the AppServiceCertificateOrders API. Manages an App Service Certificate Order.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#AppServiceCertificateOrder: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || has(self.initProvider.location)",message="location is a required parameter"
	spec:    #AppServiceCertificateOrderSpec   @go(Spec)
	status?: #AppServiceCertificateOrderStatus @go(Status)
}

// AppServiceCertificateOrderList contains a list of AppServiceCertificateOrders
#AppServiceCertificateOrderList: {
	items: [...#AppServiceCertificateOrder] @go(Items,[]AppServiceCertificateOrder)
}
