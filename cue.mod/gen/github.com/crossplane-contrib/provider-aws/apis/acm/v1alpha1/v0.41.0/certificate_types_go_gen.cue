// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/acm/v1alpha1

package v1alpha1

// Tag represents user-provided metadata that can be associated
#Tag: {
	// The key name that can be used to look up or retrieve the associated value.
	key: string @go(Key)

	// The value associated with this tag.
	value: string @go(Value)
}

// DomainValidationOption validate domain ownership.
#DomainValidationOption: {
	// Additinal Fully qualified domain name (FQDN),that to secure with an ACM certificate.
	// +immutable
	domainName: string @go(DomainName)

	// Method to validate certificate
	// +immutable
	validationDomain: string @go(ValidationDomain)
}

// CertificateSpec defines the desired state of Certificate
#CertificateSpec: {
	forProvider: #CertificateParameters @go(ForProvider)
}

// CertificateExternalStatus keeps the state of external resource
#CertificateExternalStatus: {
	// String that contains the ARN of the issued certificate. This must be of the
	certificateARN?: string @go(CertificateARN)

	// Contains the CNAME record that you add to your DNS database for domain
	// validation. For more information, see Use DNS to Validate Domain Ownership
	// (https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html).
	// Note: The CNAME information that you need does not include the name of your
	// domain. If you include your domain name in the DNS database CNAME record,
	// validation fails. For example, if the name is
	// "_a79865eb4cd1a6ab990a45779b4e0b96.yourdomain.com", only
	// "_a79865eb4cd1a6ab990a45779b4e0b96" must be used.
	resourceRecord?: null | #ResourceRecord @go(ResourceRecord,*ResourceRecord)
}

// An CertificateStatus represents the observed state of an Certificate manager.
#CertificateStatus: {
	atProvider?: #CertificateExternalStatus @go(AtProvider)
}

// ResourceRecord Contains a DNS record value that you can use to validate ownership or control of a domain.
#ResourceRecord: {
	// The name of the DNS record to create in your domain. This is supplied by ACM.
	name?: null | string @go(Name,*string)

	// The type of DNS record. Currently this can be CNAME.
	// +kubebuilder:validation:Enum=CNAME
	type?: null | string @go(Type,*string)

	// The value of the CNAME record to add to your DNS database.
	value?: null | string @go(Value,*string)
}

// CertificateParameters defines the desired state of an AWS Certificate.
#CertificateParameters: {
	// Region is the region you'd like your Certificate to be created in.
	region: string @go(Region)

	// The Amazon Resource Name (ARN) of the private certificate authority (CA)that will be used to issue the certificate.
	// +optional
	certificateAuthorityARN?: null | string @go(CertificateAuthorityARN,*string)

	// Fully qualified domain name (FQDN),that to secure with an ACM certificate.
	// +immutable
	domainName: string @go(DomainName)

	// The domain name that you want ACM to use to send you emails so that you can
	// validate domain ownership.
	// +optional
	// +immutable
	domainValidationOptions?: [...null | #DomainValidationOption] @go(DomainValidationOptions,[]*DomainValidationOption)

	// Subject Alternative Name extension of the ACM certificate.
	// +optional
	// +immutable
	subjectAlternativeNames?: [...null | string] @go(SubjectAlternativeNames,[]*string)

	// One or more resource tags to associate with the certificate.
	tags: [...#Tag] @go(Tags,[]Tag)

	// Flag to renew the certificate
	// +optional
	renewCertificate?: null | bool @go(RenewCertificate,*bool)
}

// Certificate is a managed resource that represents an AWS Certificate Manager.
// +kubebuilder:printcolumn:name="DOMAINNAME",type="string",JSONPath=".spec.forProvider.domainName"
// +kubebuilder:printcolumn:name="STATUS",type="string",JSONPath=".status.atProvider.status"
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
// +kubebuilder:deprecatedversion:warning="Please use v1beta1 version of this resource."
// Deprecated: Please use v1beta1 version of this resource.
#Certificate: {
	spec:    #CertificateSpec   @go(Spec)
	status?: #CertificateStatus @go(Status)
}

// CertificateList contains a list of Certificate.
// +kubebuilder:deprecatedversion:warning="Please use v1beta1 version of this resource."
// Deprecated: Please use v1beta1 version of this resource.
#CertificateList: {
	items: [...#Certificate] @go(Items,[]Certificate)
}
