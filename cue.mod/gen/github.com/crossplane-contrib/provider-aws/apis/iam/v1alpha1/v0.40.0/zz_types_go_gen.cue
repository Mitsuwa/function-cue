// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/iam/v1alpha1

package v1alpha1

// +kubebuilder:skipversion
#AccessDetail: {
	region?: null | string @go(Region,*string)
}

// +kubebuilder:skipversion
#AccessKeyLastUsed: {
	region?:      null | string @go(Region,*string)
	serviceName?: null | string @go(ServiceName,*string)
}

// +kubebuilder:skipversion
#AttachedPermissionsBoundary: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	permissionsBoundaryARN?:  null | string @go(PermissionsBoundaryARN,*string)
	permissionsBoundaryType?: null | string @go(PermissionsBoundaryType,*string)
}

// +kubebuilder:skipversion
#AttachedPolicy: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	policyARN?: null | string @go(PolicyARN,*string)
}

// +kubebuilder:skipversion
#EntityInfo: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	arn?:  null | string @go(ARN,*string)
	id?:   null | string @go(ID,*string)
	path?: null | string @go(Path,*string)
}

// +kubebuilder:skipversion
#ErrorDetails: {
	code?:    null | string @go(Code,*string)
	message?: null | string @go(Message,*string)
}

// +kubebuilder:skipversion
#Group: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	arn?:     null | string @go(ARN,*string)
	groupID?: null | string @go(GroupID,*string)
	path?:    null | string @go(Path,*string)
}

// +kubebuilder:skipversion
#GroupDetail: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	arn?:     null | string @go(ARN,*string)
	groupID?: null | string @go(GroupID,*string)
	path?:    null | string @go(Path,*string)
}

// +kubebuilder:skipversion
#InstanceProfile_SDK: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	arn?:                 null | string @go(ARN,*string)
	instanceProfileID?:   null | string @go(InstanceProfileID,*string)
	instanceProfileName?: null | string @go(InstanceProfileName,*string)
	path?:                null | string @go(Path,*string)

	// Contains a list of IAM roles.
	//
	// This data type is used as a response element in the ListRoles operation.
	roles?: [...null | #Role] @go(Roles,[]*Role)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
}

// +kubebuilder:skipversion
#LoginProfile: {
	passwordResetRequired?: null | bool @go(PasswordResetRequired,*bool)
}

// +kubebuilder:skipversion
#ManagedPolicyDetail: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	arn?:          null | string @go(ARN,*string)
	isAttachable?: null | bool   @go(IsAttachable,*bool)
	policyID?:     null | string @go(PolicyID,*string)
}

// +kubebuilder:skipversion
#OpenIDConnectProviderListEntry: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	arn?: null | string @go(ARN,*string)
}

// +kubebuilder:skipversion
#OrganizationsDecisionDetail: {
	allowedByOrganizations?: null | bool @go(AllowedByOrganizations,*bool)
}

// +kubebuilder:skipversion
#PasswordPolicy: {
	allowUsersToChangePassword?: null | bool @go(AllowUsersToChangePassword,*bool)
	expirePasswords?:            null | bool @go(ExpirePasswords,*bool)
	requireLowercaseCharacters?: null | bool @go(RequireLowercaseCharacters,*bool)
	requireNumbers?:             null | bool @go(RequireNumbers,*bool)
	requireSymbols?:             null | bool @go(RequireSymbols,*bool)
	requireUppercaseCharacters?: null | bool @go(RequireUppercaseCharacters,*bool)
}

// +kubebuilder:skipversion
#PermissionsBoundaryDecisionDetail: {
	allowedByPermissionsBoundary?: null | bool @go(AllowedByPermissionsBoundary,*bool)
}

// +kubebuilder:skipversion
#Policy: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	arn?:          null | string @go(ARN,*string)
	isAttachable?: null | bool   @go(IsAttachable,*bool)
	policyID?:     null | string @go(PolicyID,*string)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
}

// +kubebuilder:skipversion
#PolicyDetail: {
	policyDocument?: null | string @go(PolicyDocument,*string)
}

// +kubebuilder:skipversion
#PolicyGrantingServiceAccess: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	policyARN?: null | string @go(PolicyARN,*string)
}

// +kubebuilder:skipversion
#PolicyGroup: {
	groupID?: null | string @go(GroupID,*string)
}

// +kubebuilder:skipversion
#PolicyRole: {
	roleID?:   null | string @go(RoleID,*string)
	roleName?: null | string @go(RoleName,*string)
}

// +kubebuilder:skipversion
#PolicyUser: {
	userID?: null | string @go(UserID,*string)
}

// +kubebuilder:skipversion
#PolicyVersion: {
	document?:         null | string @go(Document,*string)
	isDefaultVersion?: null | bool   @go(IsDefaultVersion,*bool)
}

// +kubebuilder:skipversion
#Role: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	arn?:                      null | string @go(ARN,*string)
	assumeRolePolicyDocument?: null | string @go(AssumeRolePolicyDocument,*string)
	description?:              null | string @go(Description,*string)
	maxSessionDuration?:       null | int64  @go(MaxSessionDuration,*int64)
	path?:                     null | string @go(Path,*string)

	// Contains information about an attached permissions boundary.
	//
	// An attached permissions boundary is a managed policy that has been attached
	// to a user or role to set the permissions boundary.
	//
	// For more information about permissions boundaries, see Permissions boundaries
	// for IAM identities (https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html)
	// in the IAM User Guide.
	permissionsBoundary?: null | #AttachedPermissionsBoundary @go(PermissionsBoundary,*AttachedPermissionsBoundary)
	roleID?:              null | string                       @go(RoleID,*string)

	// Contains information about the last time that an IAM role was used. This
	// includes the date and time and the Region in which the role was last used.
	// Activity is only reported for the trailing 400 days. This period can be shorter
	// if your Region began supporting these features within the last year. The
	// role might have been used more than 400 days ago. For more information, see
	// Regions where data is tracked (https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period)
	// in the IAM User Guide.
	//
	// This data type is returned as a response element in the GetRole and GetAccountAuthorizationDetails
	// operations.
	roleLastUsed?: null | #RoleLastUsed @go(RoleLastUsed,*RoleLastUsed)
	roleName?:     null | string        @go(RoleName,*string)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
}

// +kubebuilder:skipversion
#RoleDetail: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	arn?:                      null | string @go(ARN,*string)
	assumeRolePolicyDocument?: null | string @go(AssumeRolePolicyDocument,*string)

	// Contains a list of instance profiles.
	instanceProfileList?: [...null | #InstanceProfile_SDK] @go(InstanceProfileList,[]*InstanceProfile_SDK)
	path?: null | string @go(Path,*string)

	// Contains information about an attached permissions boundary.
	//
	// An attached permissions boundary is a managed policy that has been attached
	// to a user or role to set the permissions boundary.
	//
	// For more information about permissions boundaries, see Permissions boundaries
	// for IAM identities (https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html)
	// in the IAM User Guide.
	permissionsBoundary?: null | #AttachedPermissionsBoundary @go(PermissionsBoundary,*AttachedPermissionsBoundary)
	roleID?:              null | string                       @go(RoleID,*string)

	// Contains information about the last time that an IAM role was used. This
	// includes the date and time and the Region in which the role was last used.
	// Activity is only reported for the trailing 400 days. This period can be shorter
	// if your Region began supporting these features within the last year. The
	// role might have been used more than 400 days ago. For more information, see
	// Regions where data is tracked (https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period)
	// in the IAM User Guide.
	//
	// This data type is returned as a response element in the GetRole and GetAccountAuthorizationDetails
	// operations.
	roleLastUsed?: null | #RoleLastUsed @go(RoleLastUsed,*RoleLastUsed)
	roleName?:     null | string        @go(RoleName,*string)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
}

// +kubebuilder:skipversion
#RoleLastUsed: {
	region?: null | string @go(Region,*string)
}

// +kubebuilder:skipversion
#SAMLProviderListEntry: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	arn?: null | string @go(ARN,*string)
}

// +kubebuilder:skipversion
#ServerCertificate: {
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
}

// +kubebuilder:skipversion
#ServerCertificateMetadata: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	arn?:                 null | string @go(ARN,*string)
	path?:                null | string @go(Path,*string)
	serverCertificateID?: null | string @go(ServerCertificateID,*string)
}

// +kubebuilder:skipversion
#ServiceLastAccessed: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	lastAuthenticatedEntity?: null | string @go(LastAuthenticatedEntity,*string)
	lastAuthenticatedRegion?: null | string @go(LastAuthenticatedRegion,*string)
}

// +kubebuilder:skipversion
#Tag: {
	key?:   null | string @go(Key,*string)
	value?: null | string @go(Value,*string)
}

// +kubebuilder:skipversion
#TrackedActionLastAccessed: {
	actionName?: null | string @go(ActionName,*string)

	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	lastAccessedEntity?: null | string @go(LastAccessedEntity,*string)
	lastAccessedRegion?: null | string @go(LastAccessedRegion,*string)
}

// +kubebuilder:skipversion
#User: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	arn?:  null | string @go(ARN,*string)
	path?: null | string @go(Path,*string)

	// Contains information about an attached permissions boundary.
	//
	// An attached permissions boundary is a managed policy that has been attached
	// to a user or role to set the permissions boundary.
	//
	// For more information about permissions boundaries, see Permissions boundaries
	// for IAM identities (https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html)
	// in the IAM User Guide.
	permissionsBoundary?: null | #AttachedPermissionsBoundary @go(PermissionsBoundary,*AttachedPermissionsBoundary)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
	userID?: null | string @go(UserID,*string)
}

// +kubebuilder:skipversion
#UserDetail: {
	// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web
	// Services resources.
	//
	// For more information about ARNs, go to Amazon Resource Names (ARNs) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
	// in the Amazon Web Services General Reference.
	arn?:  null | string @go(ARN,*string)
	path?: null | string @go(Path,*string)

	// Contains information about an attached permissions boundary.
	//
	// An attached permissions boundary is a managed policy that has been attached
	// to a user or role to set the permissions boundary.
	//
	// For more information about permissions boundaries, see Permissions boundaries
	// for IAM identities (https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html)
	// in the IAM User Guide.
	permissionsBoundary?: null | #AttachedPermissionsBoundary @go(PermissionsBoundary,*AttachedPermissionsBoundary)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
	userID?: null | string @go(UserID,*string)
}

// +kubebuilder:skipversion
#VirtualMFADevice: {
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
}
