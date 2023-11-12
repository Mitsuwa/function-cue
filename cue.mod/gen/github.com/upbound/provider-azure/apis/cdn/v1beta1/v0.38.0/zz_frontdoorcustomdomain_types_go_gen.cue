// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/cdn/v1beta1

package v1beta1

#FrontdoorCustomDomainInitParameters: {
	// The host name of the domain. The host_name field must be the FQDN of your domain(e.g. contoso.fabrikam.com). Changing this forces a new Front Door Custom Domain to be created.
	hostName?: null | string @go(HostName,*string)

	// A tls block as defined below.
	tls?: [...#TLSInitParameters] @go(TLS,[]TLSInitParameters)
}

#FrontdoorCustomDomainObservation: {
	// The ID of the Front Door Profile. Changing this forces a new Front Door Profile to be created.
	cdnFrontdoorProfileId?: null | string @go(CdnFrontdoorProfileID,*string)

	// The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain. If you are using Azure to host your DNS domains, you must delegate the domain provider's domain name system (DNS) to an Azure DNS Zone. For more information, see Delegate a domain to Azure DNS. Otherwise, if you're using your own domain provider to handle your DNS, you must validate the Front Door Custom Domain by creating the DNS TXT records manually.
	dnsZoneId?: null | string @go(DNSZoneID,*string)

	// The date time that the token expires.
	expirationDate?: null | string @go(ExpirationDate,*string)

	// The host name of the domain. The host_name field must be the FQDN of your domain(e.g. contoso.fabrikam.com). Changing this forces a new Front Door Custom Domain to be created.
	hostName?: null | string @go(HostName,*string)

	// The ID of the Front Door Custom Domain.
	id?: null | string @go(ID,*string)

	// A tls block as defined below.
	tls?: [...#TLSObservation] @go(TLS,[]TLSObservation)

	// Challenge used for DNS TXT record or file based validation.
	validationToken?: null | string @go(ValidationToken,*string)
}

#FrontdoorCustomDomainParameters: {
	// The ID of the Front Door Profile. Changing this forces a new Front Door Profile to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/cdn/v1beta1.FrontdoorProfile
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	cdnFrontdoorProfileId?: null | string @go(CdnFrontdoorProfileID,*string)

	// The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain. If you are using Azure to host your DNS domains, you must delegate the domain provider's domain name system (DNS) to an Azure DNS Zone. For more information, see Delegate a domain to Azure DNS. Otherwise, if you're using your own domain provider to handle your DNS, you must validate the Front Door Custom Domain by creating the DNS TXT records manually.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.DNSZone
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	dnsZoneId?: null | string @go(DNSZoneID,*string)

	// The host name of the domain. The host_name field must be the FQDN of your domain(e.g. contoso.fabrikam.com). Changing this forces a new Front Door Custom Domain to be created.
	// +kubebuilder:validation:Optional
	hostName?: null | string @go(HostName,*string)

	// A tls block as defined below.
	// +kubebuilder:validation:Optional
	tls?: [...#TLSParameters] @go(TLS,[]TLSParameters)
}

#TLSInitParameters: {
	// Resource ID of the Front Door Secret.
	cdnFrontdoorSecretId?: null | string @go(CdnFrontdoorSecretID,*string)

	// Defines the source of the SSL certificate. Possible values include CustomerCertificate and ManagedCertificate. Defaults to ManagedCertificate.
	certificateType?: null | string @go(CertificateType,*string)

	// TLS protocol version that will be used for Https. Possible values include TLS10 and TLS12. Defaults to TLS12.
	minimumTlsVersion?: null | string @go(MinimumTLSVersion,*string)
}

#TLSObservation: {
	// Resource ID of the Front Door Secret.
	cdnFrontdoorSecretId?: null | string @go(CdnFrontdoorSecretID,*string)

	// Defines the source of the SSL certificate. Possible values include CustomerCertificate and ManagedCertificate. Defaults to ManagedCertificate.
	certificateType?: null | string @go(CertificateType,*string)

	// TLS protocol version that will be used for Https. Possible values include TLS10 and TLS12. Defaults to TLS12.
	minimumTlsVersion?: null | string @go(MinimumTLSVersion,*string)
}

#TLSParameters: {
	// Resource ID of the Front Door Secret.
	// +kubebuilder:validation:Optional
	cdnFrontdoorSecretId?: null | string @go(CdnFrontdoorSecretID,*string)

	// Defines the source of the SSL certificate. Possible values include CustomerCertificate and ManagedCertificate. Defaults to ManagedCertificate.
	// +kubebuilder:validation:Optional
	certificateType?: null | string @go(CertificateType,*string)

	// TLS protocol version that will be used for Https. Possible values include TLS10 and TLS12. Defaults to TLS12.
	// +kubebuilder:validation:Optional
	minimumTlsVersion?: null | string @go(MinimumTLSVersion,*string)
}

// FrontdoorCustomDomainSpec defines the desired state of FrontdoorCustomDomain
#FrontdoorCustomDomainSpec: {
	forProvider: #FrontdoorCustomDomainParameters @go(ForProvider)

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
	initProvider?: #FrontdoorCustomDomainInitParameters @go(InitProvider)
}

// FrontdoorCustomDomainStatus defines the observed state of FrontdoorCustomDomain.
#FrontdoorCustomDomainStatus: {
	atProvider?: #FrontdoorCustomDomainObservation @go(AtProvider)
}

// FrontdoorCustomDomain is the Schema for the FrontdoorCustomDomains API. Manages a Front Door (standard/premium) Custom Domain.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#FrontdoorCustomDomain: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.hostName) || (has(self.initProvider) && has(self.initProvider.hostName))",message="spec.forProvider.hostName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.tls) || (has(self.initProvider) && has(self.initProvider.tls))",message="spec.forProvider.tls is a required parameter"
	spec:    #FrontdoorCustomDomainSpec   @go(Spec)
	status?: #FrontdoorCustomDomainStatus @go(Status)
}

// FrontdoorCustomDomainList contains a list of FrontdoorCustomDomains
#FrontdoorCustomDomainList: {
	items: [...#FrontdoorCustomDomain] @go(Items,[]FrontdoorCustomDomain)
}
