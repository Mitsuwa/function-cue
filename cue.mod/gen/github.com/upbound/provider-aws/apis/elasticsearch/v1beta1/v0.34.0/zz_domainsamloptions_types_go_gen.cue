// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/elasticsearch/v1beta1

package v1beta1

#DomainSAMLOptionsObservation: {
	// The name of the domain the SAML options are associated with.
	id?: null | string @go(ID,*string)

	// The SAML authentication options for an AWS Elasticsearch Domain.
	samlOptions?: [...#SAMLOptionsObservation] @go(SAMLOptions,[]SAMLOptionsObservation)
}

#DomainSAMLOptionsParameters: {
	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The SAML authentication options for an AWS Elasticsearch Domain.
	// +kubebuilder:validation:Optional
	samlOptions?: [...#SAMLOptionsParameters] @go(SAMLOptions,[]SAMLOptionsParameters)
}

#IdpObservation: {
	// The unique Entity ID of the application in SAML Identity Provider.
	entityId?: null | string @go(EntityID,*string)

	// The Metadata of the SAML application in xml format.
	metadataContent?: null | string @go(MetadataContent,*string)
}

#IdpParameters: {
	// The unique Entity ID of the application in SAML Identity Provider.
	// +kubebuilder:validation:Required
	entityId?: null | string @go(EntityID,*string)

	// The Metadata of the SAML application in xml format.
	// +kubebuilder:validation:Required
	metadataContent?: null | string @go(MetadataContent,*string)
}

#SAMLOptionsObservation: {
	// Whether SAML authentication is enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// Information from your identity provider.
	idp?: [...#IdpObservation] @go(Idp,[]IdpObservation)

	// This backend role from the SAML IdP receives full permissions to the cluster, equivalent to a new master user.
	masterBackendRole?: null | string @go(MasterBackendRole,*string)

	// Element of the SAML assertion to use for backend roles. Default is roles.
	rolesKey?: null | string @go(RolesKey,*string)

	// Duration of a session in minutes after a user logs in. Default is 60. Maximum value is 1,440.
	sessionTimeoutMinutes?: null | float64 @go(SessionTimeoutMinutes,*float64)

	// Custom SAML attribute to use for user names. Default is an empty string - "". This will cause Elasticsearch to use the NameID element of the Subject, which is the default location for name identifiers in the SAML specification.
	subjectKey?: null | string @go(SubjectKey,*string)
}

#SAMLOptionsParameters: {
	// Whether SAML authentication is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// Information from your identity provider.
	// +kubebuilder:validation:Optional
	idp?: [...#IdpParameters] @go(Idp,[]IdpParameters)

	// This backend role from the SAML IdP receives full permissions to the cluster, equivalent to a new master user.
	// +kubebuilder:validation:Optional
	masterBackendRole?: null | string @go(MasterBackendRole,*string)

	// Element of the SAML assertion to use for backend roles. Default is roles.
	// +kubebuilder:validation:Optional
	rolesKey?: null | string @go(RolesKey,*string)

	// Duration of a session in minutes after a user logs in. Default is 60. Maximum value is 1,440.
	// +kubebuilder:validation:Optional
	sessionTimeoutMinutes?: null | float64 @go(SessionTimeoutMinutes,*float64)

	// Custom SAML attribute to use for user names. Default is an empty string - "". This will cause Elasticsearch to use the NameID element of the Subject, which is the default location for name identifiers in the SAML specification.
	// +kubebuilder:validation:Optional
	subjectKey?: null | string @go(SubjectKey,*string)
}

// DomainSAMLOptionsSpec defines the desired state of DomainSAMLOptions
#DomainSAMLOptionsSpec: {
	forProvider: #DomainSAMLOptionsParameters @go(ForProvider)
}

// DomainSAMLOptionsStatus defines the observed state of DomainSAMLOptions.
#DomainSAMLOptionsStatus: {
	atProvider?: #DomainSAMLOptionsObservation @go(AtProvider)
}

// DomainSAMLOptions is the Schema for the DomainSAMLOptionss API.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#DomainSAMLOptions: {
	spec:    #DomainSAMLOptionsSpec   @go(Spec)
	status?: #DomainSAMLOptionsStatus @go(Status)
}

// DomainSAMLOptionsList contains a list of DomainSAMLOptionss
#DomainSAMLOptionsList: {
	items: [...#DomainSAMLOptions] @go(Items,[]DomainSAMLOptions)
}
