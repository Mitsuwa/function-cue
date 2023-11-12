// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/organizations/v1beta1

package v1beta1

#DelegatedAdministratorObservation: {
	// The account ID number of the member account in the organization to register as a delegated administrator.
	accountId?: null | string @go(AccountID,*string)

	// The Amazon Resource Name (ARN) of the delegated administrator's account.
	arn?: null | string @go(Arn,*string)

	// The date when the account was made a delegated administrator.
	delegationEnabledDate?: null | string @go(DelegationEnabledDate,*string)

	// The email address that is associated with the delegated administrator's AWS account.
	email?: null | string @go(Email,*string)

	// The unique identifier (ID) of the delegated administrator.
	id?: null | string @go(ID,*string)

	// The method by which the delegated administrator's account joined the organization.
	joinedMethod?: null | string @go(JoinedMethod,*string)

	// The date when the delegated administrator's account became a part of the organization.
	joinedTimestamp?: null | string @go(JoinedTimestamp,*string)

	// The friendly name of the delegated administrator's account.
	name?: null | string @go(Name,*string)

	// The service principal of the AWS service for which you want to make the member account a delegated administrator.
	servicePrincipal?: null | string @go(ServicePrincipal,*string)

	// The status of the delegated administrator's account in the organization.
	status?: null | string @go(Status,*string)
}

#DelegatedAdministratorParameters: {
	// The account ID number of the member account in the organization to register as a delegated administrator.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/organizations/v1beta1.Account
	// +kubebuilder:validation:Optional
	accountId?: null | string @go(AccountID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The service principal of the AWS service for which you want to make the member account a delegated administrator.
	// +kubebuilder:validation:Optional
	servicePrincipal?: null | string @go(ServicePrincipal,*string)
}

// DelegatedAdministratorSpec defines the desired state of DelegatedAdministrator
#DelegatedAdministratorSpec: {
	forProvider: #DelegatedAdministratorParameters @go(ForProvider)
}

// DelegatedAdministratorStatus defines the observed state of DelegatedAdministrator.
#DelegatedAdministratorStatus: {
	atProvider?: #DelegatedAdministratorObservation @go(AtProvider)
}

// DelegatedAdministrator is the Schema for the DelegatedAdministrators API. Provides a resource to manage an AWS Organizations Delegated Administrator.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#DelegatedAdministrator: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.servicePrincipal)",message="servicePrincipal is a required parameter"
	spec:    #DelegatedAdministratorSpec   @go(Spec)
	status?: #DelegatedAdministratorStatus @go(Status)
}

// DelegatedAdministratorList contains a list of DelegatedAdministrators
#DelegatedAdministratorList: {
	items: [...#DelegatedAdministrator] @go(Items,[]DelegatedAdministrator)
}
