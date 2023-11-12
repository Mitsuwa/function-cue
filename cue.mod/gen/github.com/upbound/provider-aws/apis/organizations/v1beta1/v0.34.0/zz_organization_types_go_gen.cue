// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/organizations/v1beta1

package v1beta1

#AccountsObservation: {
	// ARN of the account
	arn?: null | string @go(Arn,*string)

	// Email of the account
	email?: null | string @go(Email,*string)

	// Identifier of the account
	id?: null | string @go(ID,*string)

	// Name of the account
	name?: null | string @go(Name,*string)

	// Current status of the account
	status?: null | string @go(Status,*string)
}

#AccountsParameters: {
}

#NonMasterAccountsObservation: {
	// ARN of the account
	arn?: null | string @go(Arn,*string)

	// Email of the account
	email?: null | string @go(Email,*string)

	// Identifier of the account
	id?: null | string @go(ID,*string)

	// Name of the account
	name?: null | string @go(Name,*string)

	// Current status of the account
	status?: null | string @go(Status,*string)
}

#NonMasterAccountsParameters: {
}

#OrganizationObservation: {
	// List of organization accounts including the master account. For a list excluding the master account, see the non_master_accounts attribute. All elements have these attributes:
	accounts?: [...#AccountsObservation] @go(Accounts,[]AccountsObservation)

	// ARN of the account
	arn?: null | string @go(Arn,*string)

	// List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have feature_set set to ALL. Some services do not support enablement via this endpoint, see warning in aws docs.
	awsServiceAccessPrincipals?: [...null | string] @go(AwsServiceAccessPrincipals,[]*string)

	// List of Organizations policy types to enable in the Organization Root. Organization must have feature_set set to ALL. For additional information about valid policy types (e.g., AISERVICES_OPT_OUT_POLICY, BACKUP_POLICY, SERVICE_CONTROL_POLICY, and TAG_POLICY), see the AWS Organizations API Reference.
	enabledPolicyTypes?: [...null | string] @go(EnabledPolicyTypes,[]*string)

	// Specify "ALL" (default) or "CONSOLIDATED_BILLING".
	featureSet?: null | string @go(FeatureSet,*string)

	// Identifier of the account
	id?: null | string @go(ID,*string)

	// ARN of the master account
	masterAccountArn?: null | string @go(MasterAccountArn,*string)

	// Email address of the master account
	masterAccountEmail?: null | string @go(MasterAccountEmail,*string)

	// Identifier of the master account
	masterAccountId?: null | string @go(MasterAccountID,*string)

	// List of organization accounts excluding the master account. For a list including the master account, see the accounts attribute. All elements have these attributes:
	nonMasterAccounts?: [...#NonMasterAccountsObservation] @go(NonMasterAccounts,[]NonMasterAccountsObservation)

	// List of organization roots. All elements have these attributes:
	roots?: [...#RootsObservation] @go(Roots,[]RootsObservation)
}

#OrganizationParameters: {
	// List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have feature_set set to ALL. Some services do not support enablement via this endpoint, see warning in aws docs.
	// +kubebuilder:validation:Optional
	awsServiceAccessPrincipals?: [...null | string] @go(AwsServiceAccessPrincipals,[]*string)

	// List of Organizations policy types to enable in the Organization Root. Organization must have feature_set set to ALL. For additional information about valid policy types (e.g., AISERVICES_OPT_OUT_POLICY, BACKUP_POLICY, SERVICE_CONTROL_POLICY, and TAG_POLICY), see the AWS Organizations API Reference.
	// +kubebuilder:validation:Optional
	enabledPolicyTypes?: [...null | string] @go(EnabledPolicyTypes,[]*string)

	// Specify "ALL" (default) or "CONSOLIDATED_BILLING".
	// +kubebuilder:validation:Optional
	featureSet?: null | string @go(FeatureSet,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

#PolicyTypesObservation: {
	// Current status of the account
	status?: null | string @go(Status,*string)
	type?:   null | string @go(Type,*string)
}

#PolicyTypesParameters: {
}

#RootsObservation: {
	// ARN of the account
	arn?: null | string @go(Arn,*string)

	// Identifier of the account
	id?: null | string @go(ID,*string)

	// Name of the account
	name?: null | string @go(Name,*string)

	// List of policy types enabled for this root. All elements have these attributes:
	policyTypes?: [...#PolicyTypesObservation] @go(PolicyTypes,[]PolicyTypesObservation)
}

#RootsParameters: {
}

// OrganizationSpec defines the desired state of Organization
#OrganizationSpec: {
	forProvider: #OrganizationParameters @go(ForProvider)
}

// OrganizationStatus defines the observed state of Organization.
#OrganizationStatus: {
	atProvider?: #OrganizationObservation @go(AtProvider)
}

// Organization is the Schema for the Organizations API. Provides a resource to create an organization.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Organization: {
	spec:    #OrganizationSpec   @go(Spec)
	status?: #OrganizationStatus @go(Status)
}

// OrganizationList contains a list of Organizations
#OrganizationList: {
	items: [...#Organization] @go(Items,[]Organization)
}
