// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/apigateway/v1beta1

package v1beta1

#DomainNameObservation: {
	// ARN of domain name.
	arn?: null | string @go(Arn,*string)

	// Upload date associated with the domain certificate.
	certificateUploadDate?: null | string @go(CertificateUploadDate,*string)

	// Hostname created by Cloudfront to represent the distribution that implements this domain name mapping.
	cloudfrontDomainName?: null | string @go(CloudfrontDomainName,*string)

	// For convenience, the hosted zone ID (Z2FDTNDATAQYW2) that can be used to create a Route53 alias record for the distribution.
	cloudfrontZoneId?: null | string @go(CloudfrontZoneID,*string)

	// Internal identifier assigned to this domain name by API Gateway.
	id?: null | string @go(ID,*string)

	// Hostname for the custom domain's regional endpoint.
	regionalDomainName?: null | string @go(RegionalDomainName,*string)

	// Hosted zone ID that can be used to create a Route53 alias record for the regional endpoint.
	regionalZoneId?: null | string @go(RegionalZoneID,*string)

	// Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#DomainNameParameters: {
	// ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when an edge-optimized domain name is desired. Conflicts with certificate_name, certificate_body, certificate_chain, certificate_private_key, regional_certificate_arn, and regional_certificate_name.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/acm/v1beta1.CertificateValidation
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("certificate_arn",false)
	// +kubebuilder:validation:Optional
	certificateArn?: null | string @go(CertificateArn,*string)

	// Certificate issued for the domain name being registered, in PEM format. Only valid for EDGE endpoint configuration type. Conflicts with certificate_arn, regional_certificate_arn, and regional_certificate_name.
	// +kubebuilder:validation:Optional
	certificateBody?: null | string @go(CertificateBody,*string)

	// Certificate for the CA that issued the certificate, along with any intermediate CA certificates required to create an unbroken chain to a certificate trusted by the intended API clients. Only valid for EDGE endpoint configuration type. Conflicts with certificate_arn, regional_certificate_arn, and regional_certificate_name.
	// +kubebuilder:validation:Optional
	certificateChain?: null | string @go(CertificateChain,*string)

	// Unique name to use when registering this certificate as an IAM server certificate. Conflicts with certificate_arn, regional_certificate_arn, and regional_certificate_name. Required if certificate_arn is not set.
	// +kubebuilder:validation:Optional
	certificateName?: null | string @go(CertificateName,*string)

	// Fully-qualified domain name to register.
	// +kubebuilder:validation:Required
	domainName?: null | string @go(DomainName,*string)

	// Configuration block defining API endpoint information including type. See below.
	// +kubebuilder:validation:Optional
	endpointConfiguration?: [...#EndpointConfigurationParameters] @go(EndpointConfiguration,[]EndpointConfigurationParameters)

	// Mutual TLS authentication configuration for the domain name. See below.
	// +kubebuilder:validation:Optional
	mutualTlsAuthentication?: [...#MutualTLSAuthenticationParameters] @go(MutualTLSAuthentication,[]MutualTLSAuthenticationParameters)

	// ARN of the AWS-issued certificate used to validate custom domain ownership (when certificate_arn is issued via an ACM Private CA or mutual_tls_authentication is configured with an ACM-imported certificate.)
	// +kubebuilder:validation:Optional
	ownershipVerificationCertificateArn?: null | string @go(OwnershipVerificationCertificateArn,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when a regional domain name is desired. Conflicts with certificate_arn, certificate_name, certificate_body, certificate_chain, and certificate_private_key.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/acm/v1beta1.CertificateValidation
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("certificate_arn",false)
	// +kubebuilder:validation:Optional
	regionalCertificateArn?: null | string @go(RegionalCertificateArn,*string)

	// User-friendly name of the certificate that will be used by regional endpoint for this domain name. Conflicts with certificate_arn, certificate_name, certificate_body, certificate_chain, and certificate_private_key.
	// +kubebuilder:validation:Optional
	regionalCertificateName?: null | string @go(RegionalCertificateName,*string)

	// Transport Layer Security (TLS) version + cipher suite for this DomainName. Valid values are TLS_1_0 and TLS_1_2. Must be configured to perform drift detection.
	// +kubebuilder:validation:Optional
	securityPolicy?: null | string @go(SecurityPolicy,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#EndpointConfigurationObservation: {
}

#EndpointConfigurationParameters: {
	// List of endpoint types. This resource currently only supports managing a single value. Valid values: EDGE or REGIONAL. If unspecified, defaults to EDGE. Must be declared as REGIONAL in non-Commercial partitions. Refer to the documentation for more information on the difference between edge-optimized and regional APIs.
	// +kubebuilder:validation:Required
	types: [...null | string] @go(Types,[]*string)
}

#MutualTLSAuthenticationObservation: {
}

#MutualTLSAuthenticationParameters: {
	// Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example, s3://bucket-name/key-name. The truststore can contain certificates from public or private certificate authorities. To update the truststore, upload a new version to S3, and then update your custom domain name to use the new version.
	// +kubebuilder:validation:Required
	truststoreUri?: null | string @go(TruststoreURI,*string)

	// Version of the S3 object that contains the truststore. To specify a version, you must have versioning enabled for the S3 bucket.
	// +kubebuilder:validation:Optional
	truststoreVersion?: null | string @go(TruststoreVersion,*string)
}

// DomainNameSpec defines the desired state of DomainName
#DomainNameSpec: {
	forProvider: #DomainNameParameters @go(ForProvider)
}

// DomainNameStatus defines the observed state of DomainName.
#DomainNameStatus: {
	atProvider?: #DomainNameObservation @go(AtProvider)
}

// DomainName is the Schema for the DomainNames API. Registers a custom domain name for use with AWS API Gateway.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#DomainName: {
	spec:    #DomainNameSpec   @go(Spec)
	status?: #DomainNameStatus @go(Status)
}

// DomainNameList contains a list of DomainNames
#DomainNameList: {
	items: [...#DomainName] @go(Items,[]DomainName)
}
