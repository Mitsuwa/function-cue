// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/cognitoidentity/v1beta1

package v1beta1

#CognitoIdentityProvidersObservation: {
	// The client ID for the Amazon Cognito Identity User Pool.
	clientId?: null | string @go(ClientID,*string)

	// The provider name for an Amazon Cognito Identity User Pool.
	providerName?: null | string @go(ProviderName,*string)

	// Whether server-side token validation is enabled for the identity provider’s token or not.
	serverSideTokenCheck?: null | bool @go(ServerSideTokenCheck,*bool)
}

#CognitoIdentityProvidersParameters: {
	// The client ID for the Amazon Cognito Identity User Pool.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/cognitoidp/v1beta1.UserPoolClient
	// +kubebuilder:validation:Optional
	clientId?: null | string @go(ClientID,*string)

	// The provider name for an Amazon Cognito Identity User Pool.
	// +kubebuilder:validation:Optional
	providerName?: null | string @go(ProviderName,*string)

	// Whether server-side token validation is enabled for the identity provider’s token or not.
	// +kubebuilder:validation:Optional
	serverSideTokenCheck?: null | bool @go(ServerSideTokenCheck,*bool)
}

#PoolObservation: {
	// Enables or disables the classic / basic authentication flow. Default is false.
	allowClassicFlow?: null | bool @go(AllowClassicFlow,*bool)

	// Whether the identity pool supports unauthenticated logins or not.
	allowUnauthenticatedIdentities?: null | bool @go(AllowUnauthenticatedIdentities,*bool)

	// The ARN of the identity pool.
	arn?: null | string @go(Arn,*string)

	// An array of Amazon Cognito Identity user pools and their client IDs.
	cognitoIdentityProviders?: [...#CognitoIdentityProvidersObservation] @go(CognitoIdentityProviders,[]CognitoIdentityProvidersObservation)

	// The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your
	// backend and the Cognito service to communicate about the developer provider.
	developerProviderName?: null | string @go(DeveloperProviderName,*string)

	// An identity pool ID, e.g. us-west-2_abc123.
	id?: null | string @go(ID,*string)

	// The Cognito Identity Pool name.
	identityPoolName?: null | string @go(IdentityPoolName,*string)

	// Set of OpendID Connect provider ARNs.
	openidConnectProviderArns?: [...null | string] @go(OpenIDConnectProviderArns,[]*string)

	// An array of Amazon Resource Names (ARNs) of the SAML provider for your identity.
	samlProviderArns?: [...null | string] @go(SAMLProviderArns,[]*string)

	// Key-Value pairs mapping provider names to provider app IDs.
	supportedLoginProviders?: {[string]: null | string} @go(SupportedLoginProviders,map[string]*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#PoolParameters: {
	// Enables or disables the classic / basic authentication flow. Default is false.
	// +kubebuilder:validation:Optional
	allowClassicFlow?: null | bool @go(AllowClassicFlow,*bool)

	// Whether the identity pool supports unauthenticated logins or not.
	// +kubebuilder:validation:Optional
	allowUnauthenticatedIdentities?: null | bool @go(AllowUnauthenticatedIdentities,*bool)

	// An array of Amazon Cognito Identity user pools and their client IDs.
	// +kubebuilder:validation:Optional
	cognitoIdentityProviders?: [...#CognitoIdentityProvidersParameters] @go(CognitoIdentityProviders,[]CognitoIdentityProvidersParameters)

	// The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your
	// backend and the Cognito service to communicate about the developer provider.
	// +kubebuilder:validation:Optional
	developerProviderName?: null | string @go(DeveloperProviderName,*string)

	// The Cognito Identity Pool name.
	// +kubebuilder:validation:Optional
	identityPoolName?: null | string @go(IdentityPoolName,*string)

	// Set of OpendID Connect provider ARNs.
	// +kubebuilder:validation:Optional
	openidConnectProviderArns?: [...null | string] @go(OpenIDConnectProviderArns,[]*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// An array of Amazon Resource Names (ARNs) of the SAML provider for your identity.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.SAMLProvider
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	samlProviderArns?: [...null | string] @go(SAMLProviderArns,[]*string)

	// Key-Value pairs mapping provider names to provider app IDs.
	// +kubebuilder:validation:Optional
	supportedLoginProviders?: {[string]: null | string} @go(SupportedLoginProviders,map[string]*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// PoolSpec defines the desired state of Pool
#PoolSpec: {
	forProvider: #PoolParameters @go(ForProvider)
}

// PoolStatus defines the observed state of Pool.
#PoolStatus: {
	atProvider?: #PoolObservation @go(AtProvider)
}

// Pool is the Schema for the Pools API. Provides an AWS Cognito Identity Pool.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Pool: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.identityPoolName)",message="identityPoolName is a required parameter"
	spec:    #PoolSpec   @go(Spec)
	status?: #PoolStatus @go(Status)
}

// PoolList contains a list of Pools
#PoolList: {
	items: [...#Pool] @go(Items,[]Pool)
}
