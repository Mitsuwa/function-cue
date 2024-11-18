// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/acmpca/v1beta1

package v1beta1

#CertificateAuthorityConfigurationObservation: {
}

#CertificateAuthorityConfigurationParameters: {
	// Type of the public key algorithm and size, in bits, of the key pair that your key pair creates when it issues a certificate. Valid values can be found in the ACM PCA Documentation.
	// +kubebuilder:validation:Required
	keyAlgorithm?: null | string @go(KeyAlgorithm,*string)

	// Name of the algorithm your private CA uses to sign certificate requests. Valid values can be found in the ACM PCA Documentation.
	// +kubebuilder:validation:Required
	signingAlgorithm?: null | string @go(SigningAlgorithm,*string)

	// Nested argument that contains X.500 distinguished name information. At least one nested attribute must be specified.
	// +kubebuilder:validation:Required
	subject: [...#SubjectParameters] @go(Subject,[]SubjectParameters)
}

#CertificateAuthorityObservation: {
	// ARN of the certificate authority.
	arn?: null | string @go(Arn,*string)

	// Base64-encoded certificate authority (CA) certificate. Only available after the certificate authority certificate has been imported.
	certificate?: null | string @go(Certificate,*string)

	// Base64-encoded certificate chain that includes any intermediate certificates and chains up to root on-premises certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. Only available after the certificate authority certificate has been imported.
	certificateChain?: null | string @go(CertificateChain,*string)

	// The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate.
	certificateSigningRequest?: null | string @go(CertificateSigningRequest,*string)

	// ARN of the certificate authority.
	id?: null | string @go(ID,*string)

	// Date and time after which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
	notAfter?: null | string @go(NotAfter,*string)

	// Date and time before which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
	notBefore?: null | string @go(NotBefore,*string)

	// Serial number of the certificate authority. Only available after the certificate authority certificate has been imported.
	serial?: null | string @go(Serial,*string)

	// (Deprecated use the enabled attribute instead) Status of the certificate authority.
	status?: null | string @go(Status,*string)

	// Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#CertificateAuthorityParameters: {
	// Nested argument containing algorithms and certificate subject information. Defined below.
	// +kubebuilder:validation:Required
	certificateAuthorityConfiguration: [...#CertificateAuthorityConfigurationParameters] @go(CertificateAuthorityConfiguration,[]CertificateAuthorityConfigurationParameters)

	// Whether the certificate authority is enabled or disabled. Defaults to true. Can only be disabled if the CA is in an ACTIVE state.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// Number of days to make a CA restorable after it has been deleted, must be between 7 to 30 days, with default to 30 days.
	// +kubebuilder:validation:Optional
	permanentDeletionTimeInDays?: null | float64 @go(PermanentDeletionTimeInDays,*float64)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Nested argument containing revocation configuration. Defined below.
	// +kubebuilder:validation:Optional
	revocationConfiguration?: [...#RevocationConfigurationParameters] @go(RevocationConfiguration,[]RevocationConfigurationParameters)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Type of the certificate authority. Defaults to SUBORDINATE. Valid values: ROOT and SUBORDINATE.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)

	// Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly. Short-lived certificate validity is limited to seven days. Defaults to GENERAL_PURPOSE. Valid values: GENERAL_PURPOSE and SHORT_LIVED_CERTIFICATE.
	// +kubebuilder:validation:Optional
	usageMode?: null | string @go(UsageMode,*string)
}

#CrlConfigurationObservation: {
}

#CrlConfigurationParameters: {
	// Name inserted into the certificate CRL Distribution Points extension that enables the use of an alias for the CRL distribution point. Use this value if you don't want the name of your S3 bucket to be public. Must be less than or equal to 253 characters in length.
	// +kubebuilder:validation:Optional
	customCname?: null | string @go(CustomCname,*string)

	// Boolean value that specifies whether certificate revocation lists (CRLs) are enabled. Defaults to false.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// Number of days until a certificate expires. Must be between 1 and 5000.
	// +kubebuilder:validation:Optional
	expirationInDays?: null | float64 @go(ExpirationInDays,*float64)

	// Name of the S3 bucket that contains the CRL. If you do not provide a value for the custom_cname argument, the name of your S3 bucket is placed into the CRL Distribution Points extension of the issued certificate. You must specify a bucket policy that allows ACM PCA to write the CRL to your bucket. Must be between 3 and 255 characters in length.
	// +kubebuilder:validation:Optional
	s3BucketName?: null | string @go(S3BucketName,*string)

	// Determines whether the CRL will be publicly readable or privately held in the CRL Amazon S3 bucket. Defaults to PUBLIC_READ.
	// +kubebuilder:validation:Optional
	s3ObjectAcl?: null | string @go(S3ObjectACL,*string)
}

#OcspConfigurationObservation: {
}

#OcspConfigurationParameters: {
	// Boolean value that specifies whether a custom OCSP responder is enabled.
	// +kubebuilder:validation:Required
	enabled?: null | bool @go(Enabled,*bool)

	// CNAME specifying a customized OCSP domain. Note: The value of the CNAME must not include a protocol prefix such as "http://" or "https://".
	// +kubebuilder:validation:Optional
	ocspCustomCname?: null | string @go(OcspCustomCname,*string)
}

#RevocationConfigurationObservation: {
}

#RevocationConfigurationParameters: {
	// Nested argument containing configuration of the certificate revocation list (CRL), if any, maintained by the certificate authority. Defined below.
	// +kubebuilder:validation:Optional
	crlConfiguration?: [...#CrlConfigurationParameters] @go(CrlConfiguration,[]CrlConfigurationParameters)

	// Nested argument containing configuration of
	// the custom OCSP responder endpoint. Defined below.
	// +kubebuilder:validation:Optional
	ocspConfiguration?: [...#OcspConfigurationParameters] @go(OcspConfiguration,[]OcspConfigurationParameters)
}

#SubjectObservation: {
}

#SubjectParameters: {
	// Fully qualified domain name (FQDN) associated with the certificate subject. Must be less than or equal to 64 characters in length.
	// +kubebuilder:validation:Optional
	commonName?: null | string @go(CommonName,*string)

	// Two digit code that specifies the country in which the certificate subject located. Must be less than or equal to 2 characters in length.
	// +kubebuilder:validation:Optional
	country?: null | string @go(Country,*string)

	// Disambiguating information for the certificate subject. Must be less than or equal to 64 characters in length.
	// +kubebuilder:validation:Optional
	distinguishedNameQualifier?: null | string @go(DistinguishedNameQualifier,*string)

	// Typically a qualifier appended to the name of an individual. Examples include Jr. for junior, Sr. for senior, and III for third. Must be less than or equal to 3 characters in length.
	// +kubebuilder:validation:Optional
	generationQualifier?: null | string @go(GenerationQualifier,*string)

	// First name. Must be less than or equal to 16 characters in length.
	// +kubebuilder:validation:Optional
	givenName?: null | string @go(GivenName,*string)

	// Concatenation that typically contains the first letter of the given_name, the first letter of the middle name if one exists, and the first letter of the surname. Must be less than or equal to 5 characters in length.
	// +kubebuilder:validation:Optional
	initials?: null | string @go(Initials,*string)

	// Locality (such as a city or town) in which the certificate subject is located. Must be less than or equal to 128 characters in length.
	// +kubebuilder:validation:Optional
	locality?: null | string @go(Locality,*string)

	// Legal name of the organization with which the certificate subject is affiliated. Must be less than or equal to 64 characters in length.
	// +kubebuilder:validation:Optional
	organization?: null | string @go(Organization,*string)

	// Subdivision or unit of the organization (such as sales or finance) with which the certificate subject is affiliated. Must be less than or equal to 64 characters in length.
	// +kubebuilder:validation:Optional
	organizationalUnit?: null | string @go(OrganizationalUnit,*string)

	// Typically a shortened version of a longer given_name. For example, Jonathan is often shortened to John. Elizabeth is often shortened to Beth, Liz, or Eliza. Must be less than or equal to 128 characters in length.
	// +kubebuilder:validation:Optional
	pseudonym?: null | string @go(Pseudonym,*string)

	// State in which the subject of the certificate is located. Must be less than or equal to 128 characters in length.
	// +kubebuilder:validation:Optional
	state?: null | string @go(State,*string)

	// Family name. In the US and the UK for example, the surname of an individual is ordered last. In Asian cultures the surname is typically ordered first. Must be less than or equal to 40 characters in length.
	// +kubebuilder:validation:Optional
	surname?: null | string @go(Surname,*string)

	// Title such as Mr. or Ms. which is pre-pended to the name to refer formally to the certificate subject. Must be less than or equal to 64 characters in length.
	// +kubebuilder:validation:Optional
	title?: null | string @go(Title,*string)
}

// CertificateAuthoritySpec defines the desired state of CertificateAuthority
#CertificateAuthoritySpec: {
	forProvider: #CertificateAuthorityParameters @go(ForProvider)
}

// CertificateAuthorityStatus defines the observed state of CertificateAuthority.
#CertificateAuthorityStatus: {
	atProvider?: #CertificateAuthorityObservation @go(AtProvider)
}

// CertificateAuthority is the Schema for the CertificateAuthoritys API. Provides a resource to manage AWS Certificate Manager Private Certificate Authorities
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#CertificateAuthority: {
	spec:    #CertificateAuthoritySpec   @go(Spec)
	status?: #CertificateAuthorityStatus @go(Status)
}

// CertificateAuthorityList contains a list of CertificateAuthoritys
#CertificateAuthorityList: {
	items: [...#CertificateAuthority] @go(Items,[]CertificateAuthority)
}
