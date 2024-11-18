// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/privateca/v1beta1

package v1beta1

#CertificateTemplateIdentityConstraintsObservation: {
	// Required. If this is true, the SubjectAltNames extension may be copied from a certificate request into the signed certificate. Otherwise, the requested SubjectAltNames will be discarded.
	allowSubjectAltNamesPassthrough?: null | bool @go(AllowSubjectAltNamesPassthrough,*bool)

	// Required. If this is true, the Subject field may be copied from a certificate request into the signed certificate. Otherwise, the requested Subject will be discarded.
	allowSubjectPassthrough?: null | bool @go(AllowSubjectPassthrough,*bool)

	// Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a certificate is signed. To see the full allowed syntax and some examples, see https://cloud.google.com/certificate-authority-service/docs/using-cel
	celExpression?: [...#IdentityConstraintsCelExpressionObservation] @go(CelExpression,[]IdentityConstraintsCelExpressionObservation)
}

#CertificateTemplateIdentityConstraintsParameters: {
	// Required. If this is true, the SubjectAltNames extension may be copied from a certificate request into the signed certificate. Otherwise, the requested SubjectAltNames will be discarded.
	// +kubebuilder:validation:Required
	allowSubjectAltNamesPassthrough?: null | bool @go(AllowSubjectAltNamesPassthrough,*bool)

	// Required. If this is true, the Subject field may be copied from a certificate request into the signed certificate. Otherwise, the requested Subject will be discarded.
	// +kubebuilder:validation:Required
	allowSubjectPassthrough?: null | bool @go(AllowSubjectPassthrough,*bool)

	// Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a certificate is signed. To see the full allowed syntax and some examples, see https://cloud.google.com/certificate-authority-service/docs/using-cel
	// +kubebuilder:validation:Optional
	celExpression?: [...#IdentityConstraintsCelExpressionParameters] @go(CelExpression,[]IdentityConstraintsCelExpressionParameters)
}

#CertificateTemplateObservation: {
	// Output only. The time at which this CertificateTemplate was created.
	createTime?: null | string @go(CreateTime,*string)

	// Optional. A human-readable description of scenarios this template is intended for.
	description?: null | string @go(Description,*string)

	// an identifier for the resource with format projects/{{project}}/locations/{{location}}/certificateTemplates/{{name}}
	id?: null | string @go(ID,*string)

	// Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity.
	identityConstraints?: [...#CertificateTemplateIdentityConstraintsObservation] @go(IdentityConstraints,[]CertificateTemplateIdentityConstraintsObservation)

	// Optional. Labels with user-defined metadata.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The location for the resource
	location?: null | string @go(Location,*string)

	// Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines baseline_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values.
	passthroughExtensions?: [...#PassthroughExtensionsObservation] @go(PassthroughExtensions,[]PassthroughExtensionsObservation)

	// Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail.
	predefinedValues?: [...#PredefinedValuesObservation] @go(PredefinedValues,[]PredefinedValuesObservation)

	// The project for the resource
	project?: null | string @go(Project,*string)

	// Output only. The time at which this CertificateTemplate was updated.
	updateTime?: null | string @go(UpdateTime,*string)
}

#CertificateTemplateParameters: {
	// Optional. A human-readable description of scenarios this template is intended for.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity.
	// +kubebuilder:validation:Optional
	identityConstraints?: [...#CertificateTemplateIdentityConstraintsParameters] @go(IdentityConstraints,[]CertificateTemplateIdentityConstraintsParameters)

	// Optional. Labels with user-defined metadata.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The location for the resource
	// +kubebuilder:validation:Required
	location?: null | string @go(Location,*string)

	// Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines baseline_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values.
	// +kubebuilder:validation:Optional
	passthroughExtensions?: [...#PassthroughExtensionsParameters] @go(PassthroughExtensions,[]PassthroughExtensionsParameters)

	// Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail.
	// +kubebuilder:validation:Optional
	predefinedValues?: [...#PredefinedValuesParameters] @go(PredefinedValues,[]PredefinedValuesParameters)

	// The project for the resource
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)
}

#IdentityConstraintsCelExpressionObservation: {
	// Optional. A human-readable description of scenarios this template is intended for.
	description?: null | string @go(Description,*string)

	// Textual representation of an expression in Common Expression Language syntax.
	expression?: null | string @go(Expression,*string)

	// The location for the resource
	location?: null | string @go(Location,*string)

	// Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
	title?: null | string @go(Title,*string)
}

#IdentityConstraintsCelExpressionParameters: {
	// Optional. A human-readable description of scenarios this template is intended for.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Textual representation of an expression in Common Expression Language syntax.
	// +kubebuilder:validation:Optional
	expression?: null | string @go(Expression,*string)

	// The location for the resource
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
	// +kubebuilder:validation:Optional
	title?: null | string @go(Title,*string)
}

#PassthroughExtensionsAdditionalExtensionsObservation: {
	// Required. The parts of an OID path. The most significant parts of the path come first.
	objectIdPath?: [...null | float64] @go(ObjectIDPath,[]*float64)
}

#PassthroughExtensionsAdditionalExtensionsParameters: {
	// Required. The parts of an OID path. The most significant parts of the path come first.
	// +kubebuilder:validation:Required
	objectIdPath: [...null | float64] @go(ObjectIDPath,[]*float64)
}

#PassthroughExtensionsObservation: {
	// Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_extensions to determine the full set of X.509 extensions.
	additionalExtensions?: [...#PassthroughExtensionsAdditionalExtensionsObservation] @go(AdditionalExtensions,[]PassthroughExtensionsAdditionalExtensionsObservation)

	// Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determine the full set of X.509 extensions.
	knownExtensions?: [...null | string] @go(KnownExtensions,[]*string)
}

#PassthroughExtensionsParameters: {
	// Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_extensions to determine the full set of X.509 extensions.
	// +kubebuilder:validation:Optional
	additionalExtensions?: [...#PassthroughExtensionsAdditionalExtensionsParameters] @go(AdditionalExtensions,[]PassthroughExtensionsAdditionalExtensionsParameters)

	// Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determine the full set of X.509 extensions.
	// +kubebuilder:validation:Optional
	knownExtensions?: [...null | string] @go(KnownExtensions,[]*string)
}

#PredefinedValuesAdditionalExtensionsObjectIDObservation: {
	// Required. The parts of an OID path. The most significant parts of the path come first.
	objectIdPath?: [...null | float64] @go(ObjectIDPath,[]*float64)
}

#PredefinedValuesAdditionalExtensionsObjectIDParameters: {
	// Required. The parts of an OID path. The most significant parts of the path come first.
	// +kubebuilder:validation:Required
	objectIdPath: [...null | float64] @go(ObjectIDPath,[]*float64)
}

#PredefinedValuesAdditionalExtensionsObservation: {
	// Optional. Indicates whether or not this extension is critical (i.e., if the client does not know how to handle this extension, the client should consider this to be an error).
	critical?: null | bool @go(Critical,*bool)

	// Required. The OID for this X.509 extension.
	objectId?: [...#PredefinedValuesAdditionalExtensionsObjectIDObservation] @go(ObjectID,[]PredefinedValuesAdditionalExtensionsObjectIDObservation)

	// Required. The value of this X.509 extension.
	value?: null | string @go(Value,*string)
}

#PredefinedValuesAdditionalExtensionsParameters: {
	// Optional. Indicates whether or not this extension is critical (i.e., if the client does not know how to handle this extension, the client should consider this to be an error).
	// +kubebuilder:validation:Optional
	critical?: null | bool @go(Critical,*bool)

	// Required. The OID for this X.509 extension.
	// +kubebuilder:validation:Required
	objectId: [...#PredefinedValuesAdditionalExtensionsObjectIDParameters] @go(ObjectID,[]PredefinedValuesAdditionalExtensionsObjectIDParameters)

	// Required. The value of this X.509 extension.
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

#PredefinedValuesCAOptionsObservation: {
	// Optional. Refers to the "CA" X.509 extension, which is a boolean value. When this value is missing, the extension will be omitted from the CA certificate.
	isCa?: null | bool @go(IsCA,*bool)

	// Optional. Refers to the path length restriction X.509 extension. For a CA certificate, this value describes the depth of subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. If this value is missing, the max path length will be omitted from the CA certificate.
	maxIssuerPathLength?: null | float64 @go(MaxIssuerPathLength,*float64)
}

#PredefinedValuesCAOptionsParameters: {
	// Optional. Refers to the "CA" X.509 extension, which is a boolean value. When this value is missing, the extension will be omitted from the CA certificate.
	// +kubebuilder:validation:Optional
	isCa?: null | bool @go(IsCA,*bool)

	// Optional. Refers to the path length restriction X.509 extension. For a CA certificate, this value describes the depth of subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. If this value is missing, the max path length will be omitted from the CA certificate.
	// +kubebuilder:validation:Optional
	maxIssuerPathLength?: null | float64 @go(MaxIssuerPathLength,*float64)
}

#PredefinedValuesKeyUsageBaseKeyUsageObservation: {
	// The key may be used to sign certificates.
	certSign?: null | bool @go(CertSign,*bool)

	// The key may be used for cryptographic commitments. Note that this may also be referred to as "non-repudiation".
	contentCommitment?: null | bool @go(ContentCommitment,*bool)

	// The key may be used sign certificate revocation lists.
	crlSign?: null | bool @go(CrlSign,*bool)

	// The key may be used to encipher data.
	dataEncipherment?: null | bool @go(DataEncipherment,*bool)

	// The key may be used to decipher only.
	decipherOnly?: null | bool @go(DecipherOnly,*bool)

	// The key may be used for digital signatures.
	digitalSignature?: null | bool @go(DigitalSignature,*bool)

	// The key may be used to encipher only.
	encipherOnly?: null | bool @go(EncipherOnly,*bool)

	// The key may be used in a key agreement protocol.
	keyAgreement?: null | bool @go(KeyAgreement,*bool)

	// The key may be used to encipher other keys.
	keyEncipherment?: null | bool @go(KeyEncipherment,*bool)
}

#PredefinedValuesKeyUsageBaseKeyUsageParameters: {
	// The key may be used to sign certificates.
	// +kubebuilder:validation:Optional
	certSign?: null | bool @go(CertSign,*bool)

	// The key may be used for cryptographic commitments. Note that this may also be referred to as "non-repudiation".
	// +kubebuilder:validation:Optional
	contentCommitment?: null | bool @go(ContentCommitment,*bool)

	// The key may be used sign certificate revocation lists.
	// +kubebuilder:validation:Optional
	crlSign?: null | bool @go(CrlSign,*bool)

	// The key may be used to encipher data.
	// +kubebuilder:validation:Optional
	dataEncipherment?: null | bool @go(DataEncipherment,*bool)

	// The key may be used to decipher only.
	// +kubebuilder:validation:Optional
	decipherOnly?: null | bool @go(DecipherOnly,*bool)

	// The key may be used for digital signatures.
	// +kubebuilder:validation:Optional
	digitalSignature?: null | bool @go(DigitalSignature,*bool)

	// The key may be used to encipher only.
	// +kubebuilder:validation:Optional
	encipherOnly?: null | bool @go(EncipherOnly,*bool)

	// The key may be used in a key agreement protocol.
	// +kubebuilder:validation:Optional
	keyAgreement?: null | bool @go(KeyAgreement,*bool)

	// The key may be used to encipher other keys.
	// +kubebuilder:validation:Optional
	keyEncipherment?: null | bool @go(KeyEncipherment,*bool)
}

#PredefinedValuesKeyUsageExtendedKeyUsageObservation: {
	// Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as "TLS WWW client authentication", though regularly used for non-WWW TLS.
	clientAuth?: null | bool @go(ClientAuth,*bool)

	// Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as "Signing of downloadable executable code client authentication".
	codeSigning?: null | bool @go(CodeSigning,*bool)

	// Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as "Email protection".
	emailProtection?: null | bool @go(EmailProtection,*bool)

	// Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as "Signing OCSP responses".
	ocspSigning?: null | bool @go(OcspSigning,*bool)

	// Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as "TLS WWW server authentication", though regularly used for non-WWW TLS.
	serverAuth?: null | bool @go(ServerAuth,*bool)

	// Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as "Binding the hash of an object to a time".
	timeStamping?: null | bool @go(TimeStamping,*bool)
}

#PredefinedValuesKeyUsageExtendedKeyUsageParameters: {
	// Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as "TLS WWW client authentication", though regularly used for non-WWW TLS.
	// +kubebuilder:validation:Optional
	clientAuth?: null | bool @go(ClientAuth,*bool)

	// Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as "Signing of downloadable executable code client authentication".
	// +kubebuilder:validation:Optional
	codeSigning?: null | bool @go(CodeSigning,*bool)

	// Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as "Email protection".
	// +kubebuilder:validation:Optional
	emailProtection?: null | bool @go(EmailProtection,*bool)

	// Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as "Signing OCSP responses".
	// +kubebuilder:validation:Optional
	ocspSigning?: null | bool @go(OcspSigning,*bool)

	// Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as "TLS WWW server authentication", though regularly used for non-WWW TLS.
	// +kubebuilder:validation:Optional
	serverAuth?: null | bool @go(ServerAuth,*bool)

	// Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as "Binding the hash of an object to a time".
	// +kubebuilder:validation:Optional
	timeStamping?: null | bool @go(TimeStamping,*bool)
}

#PredefinedValuesKeyUsageObservation: {
	// Describes high-level ways in which a key may be used.
	baseKeyUsage?: [...#PredefinedValuesKeyUsageBaseKeyUsageObservation] @go(BaseKeyUsage,[]PredefinedValuesKeyUsageBaseKeyUsageObservation)

	// Detailed scenarios in which a key may be used.
	extendedKeyUsage?: [...#PredefinedValuesKeyUsageExtendedKeyUsageObservation] @go(ExtendedKeyUsage,[]PredefinedValuesKeyUsageExtendedKeyUsageObservation)

	// Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message.
	unknownExtendedKeyUsages?: [...#PredefinedValuesKeyUsageUnknownExtendedKeyUsagesObservation] @go(UnknownExtendedKeyUsages,[]PredefinedValuesKeyUsageUnknownExtendedKeyUsagesObservation)
}

#PredefinedValuesKeyUsageParameters: {
	// Describes high-level ways in which a key may be used.
	// +kubebuilder:validation:Optional
	baseKeyUsage?: [...#PredefinedValuesKeyUsageBaseKeyUsageParameters] @go(BaseKeyUsage,[]PredefinedValuesKeyUsageBaseKeyUsageParameters)

	// Detailed scenarios in which a key may be used.
	// +kubebuilder:validation:Optional
	extendedKeyUsage?: [...#PredefinedValuesKeyUsageExtendedKeyUsageParameters] @go(ExtendedKeyUsage,[]PredefinedValuesKeyUsageExtendedKeyUsageParameters)

	// Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message.
	// +kubebuilder:validation:Optional
	unknownExtendedKeyUsages?: [...#PredefinedValuesKeyUsageUnknownExtendedKeyUsagesParameters] @go(UnknownExtendedKeyUsages,[]PredefinedValuesKeyUsageUnknownExtendedKeyUsagesParameters)
}

#PredefinedValuesKeyUsageUnknownExtendedKeyUsagesObservation: {
	// Required. The parts of an OID path. The most significant parts of the path come first.
	objectIdPath?: [...null | float64] @go(ObjectIDPath,[]*float64)
}

#PredefinedValuesKeyUsageUnknownExtendedKeyUsagesParameters: {
	// Required. The parts of an OID path. The most significant parts of the path come first.
	// +kubebuilder:validation:Required
	objectIdPath: [...null | float64] @go(ObjectIDPath,[]*float64)
}

#PredefinedValuesObservation: {
	// Optional. Describes custom X.509 extensions.
	additionalExtensions?: [...#PredefinedValuesAdditionalExtensionsObservation] @go(AdditionalExtensions,[]PredefinedValuesAdditionalExtensionsObservation)

	// Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
	aiaOcspServers?: [...null | string] @go(AiaOcspServers,[]*string)

	// Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
	caOptions?: [...#PredefinedValuesCAOptionsObservation] @go(CAOptions,[]PredefinedValuesCAOptionsObservation)

	// Optional. Indicates the intended use for keys that correspond to a certificate.
	keyUsage?: [...#PredefinedValuesKeyUsageObservation] @go(KeyUsage,[]PredefinedValuesKeyUsageObservation)

	// Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
	policyIds?: [...#PredefinedValuesPolicyIdsObservation] @go(PolicyIds,[]PredefinedValuesPolicyIdsObservation)
}

#PredefinedValuesParameters: {
	// Optional. Describes custom X.509 extensions.
	// +kubebuilder:validation:Optional
	additionalExtensions?: [...#PredefinedValuesAdditionalExtensionsParameters] @go(AdditionalExtensions,[]PredefinedValuesAdditionalExtensionsParameters)

	// Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
	// +kubebuilder:validation:Optional
	aiaOcspServers?: [...null | string] @go(AiaOcspServers,[]*string)

	// Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
	// +kubebuilder:validation:Optional
	caOptions?: [...#PredefinedValuesCAOptionsParameters] @go(CAOptions,[]PredefinedValuesCAOptionsParameters)

	// Optional. Indicates the intended use for keys that correspond to a certificate.
	// +kubebuilder:validation:Optional
	keyUsage?: [...#PredefinedValuesKeyUsageParameters] @go(KeyUsage,[]PredefinedValuesKeyUsageParameters)

	// Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
	// +kubebuilder:validation:Optional
	policyIds?: [...#PredefinedValuesPolicyIdsParameters] @go(PolicyIds,[]PredefinedValuesPolicyIdsParameters)
}

#PredefinedValuesPolicyIdsObservation: {
	// Required. The parts of an OID path. The most significant parts of the path come first.
	objectIdPath?: [...null | float64] @go(ObjectIDPath,[]*float64)
}

#PredefinedValuesPolicyIdsParameters: {
	// Required. The parts of an OID path. The most significant parts of the path come first.
	// +kubebuilder:validation:Required
	objectIdPath: [...null | float64] @go(ObjectIDPath,[]*float64)
}

// CertificateTemplateSpec defines the desired state of CertificateTemplate
#CertificateTemplateSpec: {
	forProvider: #CertificateTemplateParameters @go(ForProvider)
}

// CertificateTemplateStatus defines the observed state of CertificateTemplate.
#CertificateTemplateStatus: {
	atProvider?: #CertificateTemplateObservation @go(AtProvider)
}

// CertificateTemplate is the Schema for the CertificateTemplates API. Certificate Authority Service provides reusable and parameterized templates that you can use for common certificate issuance scenarios. A certificate template represents a relatively static and well-defined certificate issuance schema within an organization.  A certificate template can essentially become a full-fledged vertical certificate issuance framework.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#CertificateTemplate: {
	spec:    #CertificateTemplateSpec   @go(Spec)
	status?: #CertificateTemplateStatus @go(Status)
}

// CertificateTemplateList contains a list of CertificateTemplates
#CertificateTemplateList: {
	items: [...#CertificateTemplate] @go(Items,[]CertificateTemplate)
}
