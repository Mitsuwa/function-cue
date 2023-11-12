// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/cognitoidentity/v1beta1

package v1beta1

#CognitoIdentityPoolProviderPrincipalTagObservation: {
	id?: null | string @go(ID,*string)
}

#CognitoIdentityPoolProviderPrincipalTagParameters: {
	// An identity pool ID.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/cognitoidentity/v1beta1.Pool
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	identityPoolId?: null | string @go(IdentityPoolID,*string)

	// The name of the identity provider.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/cognitoidp/v1beta1.UserPool
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("endpoint",true)
	// +kubebuilder:validation:Optional
	identityProviderName?: null | string @go(IdentityProviderName,*string)

	// String to string map of variables.
	// +kubebuilder:validation:Optional
	principalTags?: {[string]: null | string} @go(PrincipalTags,map[string]*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// :  use default (username and clientID) attribute mappings.
	// +kubebuilder:validation:Optional
	useDefaults?: null | bool @go(UseDefaults,*bool)
}

// CognitoIdentityPoolProviderPrincipalTagSpec defines the desired state of CognitoIdentityPoolProviderPrincipalTag
#CognitoIdentityPoolProviderPrincipalTagSpec: {
	forProvider: #CognitoIdentityPoolProviderPrincipalTagParameters @go(ForProvider)
}

// CognitoIdentityPoolProviderPrincipalTagStatus defines the observed state of CognitoIdentityPoolProviderPrincipalTag.
#CognitoIdentityPoolProviderPrincipalTagStatus: {
	atProvider?: #CognitoIdentityPoolProviderPrincipalTagObservation @go(AtProvider)
}

// CognitoIdentityPoolProviderPrincipalTag is the Schema for the CognitoIdentityPoolProviderPrincipalTags API. Provides an AWS Cognito Identity Principal Mapping.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#CognitoIdentityPoolProviderPrincipalTag: {
	spec:    #CognitoIdentityPoolProviderPrincipalTagSpec   @go(Spec)
	status?: #CognitoIdentityPoolProviderPrincipalTagStatus @go(Status)
}

// CognitoIdentityPoolProviderPrincipalTagList contains a list of CognitoIdentityPoolProviderPrincipalTags
#CognitoIdentityPoolProviderPrincipalTagList: {
	items: [...#CognitoIdentityPoolProviderPrincipalTag] @go(Items,[]CognitoIdentityPoolProviderPrincipalTag)
}
