// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/sagemaker/v1beta1

package v1beta1

#CognitoConfigObservation: {
	// The client ID for your Amazon Cognito user pool.
	clientId?: null | string @go(ClientID,*string)

	// ID for your Amazon Cognito user pool.
	userPool?: null | string @go(UserPool,*string)
}

#CognitoConfigParameters: {
	// The client ID for your Amazon Cognito user pool.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/cognitoidp/v1beta1.UserPoolClient
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	clientId?: null | string @go(ClientID,*string)

	// ID for your Amazon Cognito user pool.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/cognitoidp/v1beta1.UserPoolDomain
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("user_pool_id",false)
	// +kubebuilder:validation:Optional
	userPool?: null | string @go(UserPool,*string)
}

#OidcConfigObservation: {
	// The OIDC IdP authorization endpoint used to configure your private workforce.
	authorizationEndpoint?: null | string @go(AuthorizationEndpoint,*string)

	// The client ID for your Amazon Cognito user pool.
	clientId?: null | string @go(ClientID,*string)

	// The OIDC IdP issuer used to configure your private workforce.
	issuer?: null | string @go(Issuer,*string)

	// The OIDC IdP JSON Web Key Set (Jwks) URI used to configure your private workforce.
	jwksUri?: null | string @go(JwksURI,*string)

	// The OIDC IdP logout endpoint used to configure your private workforce.
	logoutEndpoint?: null | string @go(LogoutEndpoint,*string)

	// The OIDC IdP token endpoint used to configure your private workforce.
	tokenEndpoint?: null | string @go(TokenEndpoint,*string)

	// The OIDC IdP user information endpoint used to configure your private workforce.
	userInfoEndpoint?: null | string @go(UserInfoEndpoint,*string)
}

#OidcConfigParameters: {
	// The OIDC IdP authorization endpoint used to configure your private workforce.
	// +kubebuilder:validation:Required
	authorizationEndpoint?: null | string @go(AuthorizationEndpoint,*string)

	// The client ID for your Amazon Cognito user pool.
	// +kubebuilder:validation:Required
	clientId?: null | string @go(ClientID,*string)

	// The OIDC IdP issuer used to configure your private workforce.
	// +kubebuilder:validation:Required
	issuer?: null | string @go(Issuer,*string)

	// The OIDC IdP JSON Web Key Set (Jwks) URI used to configure your private workforce.
	// +kubebuilder:validation:Required
	jwksUri?: null | string @go(JwksURI,*string)

	// The OIDC IdP logout endpoint used to configure your private workforce.
	// +kubebuilder:validation:Required
	logoutEndpoint?: null | string @go(LogoutEndpoint,*string)

	// The OIDC IdP token endpoint used to configure your private workforce.
	// +kubebuilder:validation:Required
	tokenEndpoint?: null | string @go(TokenEndpoint,*string)

	// The OIDC IdP user information endpoint used to configure your private workforce.
	// +kubebuilder:validation:Required
	userInfoEndpoint?: null | string @go(UserInfoEndpoint,*string)
}

#SourceIPConfigObservation: {
	// A list of up to 10 CIDR values.
	cidrs?: [...null | string] @go(Cidrs,[]*string)
}

#SourceIPConfigParameters: {
	// A list of up to 10 CIDR values.
	// +kubebuilder:validation:Required
	cidrs: [...null | string] @go(Cidrs,[]*string)
}

#WorkforceObservation: {
	// The Amazon Resource Name (ARN) assigned by AWS to this Workforce.
	arn?: null | string @go(Arn,*string)

	// Use this parameter to configure an Amazon Cognito private workforce. A single Cognito workforce is created using and corresponds to a single Amazon Cognito user pool. Conflicts with oidc_config. see Cognito Config details below.
	cognitoConfig?: [...#CognitoConfigObservation] @go(CognitoConfig,[]CognitoConfigObservation)

	// The name of the Workforce.
	id?: null | string @go(ID,*string)

	// Use this parameter to configure a private workforce using your own OIDC Identity Provider. Conflicts with cognito_config. see OIDC Config details below.
	oidcConfig?: [...#OidcConfigObservation] @go(OidcConfig,[]OidcConfigObservation)

	// A list of IP address ranges Used to create an allow list of IP addresses for a private workforce. By default, a workforce isn't restricted to specific IP addresses. see Source Ip Config details below.
	sourceIpConfig?: [...#SourceIPConfigObservation] @go(SourceIPConfig,[]SourceIPConfigObservation)

	// The subdomain for your OIDC Identity Provider.
	subdomain?: null | string @go(Subdomain,*string)

	// configure a workforce using VPC. see Workforce VPC Config details below.
	workforceVpcConfig?: [...#WorkforceVPCConfigObservation] @go(WorkforceVPCConfig,[]WorkforceVPCConfigObservation)
}

#WorkforceParameters: {
	// Use this parameter to configure an Amazon Cognito private workforce. A single Cognito workforce is created using and corresponds to a single Amazon Cognito user pool. Conflicts with oidc_config. see Cognito Config details below.
	// +kubebuilder:validation:Optional
	cognitoConfig?: [...#CognitoConfigParameters] @go(CognitoConfig,[]CognitoConfigParameters)

	// Use this parameter to configure a private workforce using your own OIDC Identity Provider. Conflicts with cognito_config. see OIDC Config details below.
	// +kubebuilder:validation:Optional
	oidcConfig?: [...#OidcConfigParameters] @go(OidcConfig,[]OidcConfigParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// A list of IP address ranges Used to create an allow list of IP addresses for a private workforce. By default, a workforce isn't restricted to specific IP addresses. see Source Ip Config details below.
	// +kubebuilder:validation:Optional
	sourceIpConfig?: [...#SourceIPConfigParameters] @go(SourceIPConfig,[]SourceIPConfigParameters)

	// configure a workforce using VPC. see Workforce VPC Config details below.
	// +kubebuilder:validation:Optional
	workforceVpcConfig?: [...#WorkforceVPCConfigParameters] @go(WorkforceVPCConfig,[]WorkforceVPCConfigParameters)
}

#WorkforceVPCConfigObservation: {
	// The VPC security group IDs. The security groups must be for the same VPC as specified in the subnet.
	securityGroupIds?: [...null | string] @go(SecurityGroupIds,[]*string)

	// The ID of the subnets in the VPC that you want to connect.
	subnets?: [...null | string] @go(Subnets,[]*string)

	// The IDs for the VPC service endpoints of your VPC workforce.
	vpcEndpointId?: null | string @go(VPCEndpointID,*string)

	// The ID of the VPC that the workforce uses for communication.
	vpcId?: null | string @go(VPCID,*string)
}

#WorkforceVPCConfigParameters: {
	// The VPC security group IDs. The security groups must be for the same VPC as specified in the subnet.
	// +kubebuilder:validation:Optional
	securityGroupIds?: [...null | string] @go(SecurityGroupIds,[]*string)

	// The ID of the subnets in the VPC that you want to connect.
	// +kubebuilder:validation:Optional
	subnets?: [...null | string] @go(Subnets,[]*string)

	// The ID of the VPC that the workforce uses for communication.
	// +kubebuilder:validation:Optional
	vpcId?: null | string @go(VPCID,*string)
}

// WorkforceSpec defines the desired state of Workforce
#WorkforceSpec: {
	forProvider: #WorkforceParameters @go(ForProvider)
}

// WorkforceStatus defines the observed state of Workforce.
#WorkforceStatus: {
	atProvider?: #WorkforceObservation @go(AtProvider)
}

// Workforce is the Schema for the Workforces API. Provides a SageMaker Workforce resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Workforce: {
	spec:    #WorkforceSpec   @go(Spec)
	status?: #WorkforceStatus @go(Status)
}

// WorkforceList contains a list of Workforces
#WorkforceList: {
	items: [...#Workforce] @go(Items,[]Workforce)
}
