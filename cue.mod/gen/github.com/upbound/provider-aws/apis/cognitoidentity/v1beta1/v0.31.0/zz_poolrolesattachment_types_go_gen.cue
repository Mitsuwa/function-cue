// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/cognitoidentity/v1beta1

package v1beta1

#MappingRuleObservation: {
}

#MappingRuleParameters: {
	// The claim name that must be present in the token, for example, "isAdmin" or "paid".
	// +kubebuilder:validation:Required
	claim?: null | string @go(Claim,*string)

	// The match condition that specifies how closely the claim value in the IdP token must match Value.
	// +kubebuilder:validation:Required
	matchType?: null | string @go(MatchType,*string)

	// The role ARN.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	roleArn?: null | string @go(RoleArn,*string)

	// A brief string that the claim must match, for example, "paid" or "yes".
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

#PoolRolesAttachmentObservation: {
	// The identity pool ID.
	id?: null | string @go(ID,*string)
}

#PoolRolesAttachmentParameters: {
	// An identity pool ID in the format REGION_GUID.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/cognitoidentity/v1beta1.Pool
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	identityPoolId?: null | string @go(IdentityPoolID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// A List of Role Mapping.
	// +kubebuilder:validation:Optional
	roleMapping?: [...#RoleMappingParameters] @go(RoleMapping,[]RoleMappingParameters)

	// The map of roles associated with this pool. For a given role, the key will be either "authenticated" or "unauthenticated" and the value will be the Role ARN.
	// +kubebuilder:validation:Required
	roles: {[string]: null | string} @go(Roles,map[string]*string)
}

#RoleMappingObservation: {
}

#RoleMappingParameters: {
	// Specifies the action to be taken if either no rules match the claim value for the Rules type, or there is no cognito:preferred_role claim and there are multiple cognito:roles matches for the Token type. Required if you specify Token or Rules as the Type.
	// +kubebuilder:validation:Optional
	ambiguousRoleResolution?: null | string @go(AmbiguousRoleResolution,*string)

	// A string identifying the identity provider, for example, "graph.facebook.com" or "cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id". Depends on cognito_identity_providers set on aws_cognito_identity_pool resource or a aws_cognito_identity_provider resource.
	// +kubebuilder:validation:Required
	identityProvider?: null | string @go(IdentityProvider,*string)

	// The Rules Configuration to be used for mapping users to roles. You can specify up to 25 rules per identity provider. Rules are evaluated in order. The first one to match specifies the role.
	// +kubebuilder:validation:Optional
	mappingRule?: [...#MappingRuleParameters] @go(MappingRule,[]MappingRuleParameters)

	// The role mapping type.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

// PoolRolesAttachmentSpec defines the desired state of PoolRolesAttachment
#PoolRolesAttachmentSpec: {
	forProvider: #PoolRolesAttachmentParameters @go(ForProvider)
}

// PoolRolesAttachmentStatus defines the observed state of PoolRolesAttachment.
#PoolRolesAttachmentStatus: {
	atProvider?: #PoolRolesAttachmentObservation @go(AtProvider)
}

// PoolRolesAttachment is the Schema for the PoolRolesAttachments API. Provides an AWS Cognito Identity Pool Roles Attachment.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#PoolRolesAttachment: {
	spec:    #PoolRolesAttachmentSpec   @go(Spec)
	status?: #PoolRolesAttachmentStatus @go(Status)
}

// PoolRolesAttachmentList contains a list of PoolRolesAttachments
#PoolRolesAttachmentList: {
	items: [...#PoolRolesAttachment] @go(Items,[]PoolRolesAttachment)
}
