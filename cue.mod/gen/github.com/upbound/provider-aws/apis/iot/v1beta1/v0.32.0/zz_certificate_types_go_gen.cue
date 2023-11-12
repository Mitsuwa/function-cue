// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/iot/v1beta1

package v1beta1

#CertificateObservation: {
	// The ARN of the created certificate.
	arn?: null | string @go(Arn,*string)

	// The internal ID assigned to this certificate.
	id?: null | string @go(ID,*string)
}

#CertificateParameters: {
	// Boolean flag to indicate if the certificate should be active
	// +kubebuilder:validation:Required
	active?: null | bool @go(Active,*bool)

	// The certificate signing request. Review
	// CreateCertificateFromCsr
	// for more information on generating a certificate from a certificate signing request (CSR).
	// If none is specified both the certificate and keys will be generated, review CreateKeysAndCertificate
	// for more information on generating keys and a certificate.
	// +kubebuilder:validation:Optional
	csr?: null | string @go(Csr,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// CertificateSpec defines the desired state of Certificate
#CertificateSpec: {
	forProvider: #CertificateParameters @go(ForProvider)
}

// CertificateStatus defines the observed state of Certificate.
#CertificateStatus: {
	atProvider?: #CertificateObservation @go(AtProvider)
}

// Certificate is the Schema for the Certificates API. Creates and manages an AWS IoT certificate.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Certificate: {
	spec:    #CertificateSpec   @go(Spec)
	status?: #CertificateStatus @go(Status)
}

// CertificateList contains a list of Certificates
#CertificateList: {
	items: [...#Certificate] @go(Items,[]Certificate)
}
