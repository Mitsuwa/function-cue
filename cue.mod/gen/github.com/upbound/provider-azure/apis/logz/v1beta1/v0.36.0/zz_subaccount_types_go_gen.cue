// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/logz/v1beta1

package v1beta1

#SubAccountInitParameters: {
	// Whether the resource monitoring is enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// A mapping of tags which should be assigned to the logz Sub Account.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A user block as defined below. Changing this forces a new resource to be created.
	user?: [...#SubAccountUserInitParameters] @go(User,[]SubAccountUserInitParameters)
}

#SubAccountObservation: {
	// Whether the resource monitoring is enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// The ID of the logz Sub Account.
	id?: null | string @go(ID,*string)

	// The ID of the Logz Monitor. Changing this forces a new logz Sub Account to be created.
	logzMonitorId?: null | string @go(LogzMonitorID,*string)

	// A mapping of tags which should be assigned to the logz Sub Account.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A user block as defined below. Changing this forces a new resource to be created.
	user?: [...#SubAccountUserObservation] @go(User,[]SubAccountUserObservation)
}

#SubAccountParameters: {
	// Whether the resource monitoring is enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// The ID of the Logz Monitor. Changing this forces a new logz Sub Account to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/logz/v1beta1.Monitor
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	logzMonitorId?: null | string @go(LogzMonitorID,*string)

	// A mapping of tags which should be assigned to the logz Sub Account.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A user block as defined below. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	user?: [...#SubAccountUserParameters] @go(User,[]SubAccountUserParameters)
}

#SubAccountUserInitParameters: {
	// Email of the user used by Logz for contacting them if needed. A valid email address consists of an email prefix and an email domain. The prefix and domain may contain only letters, numbers, underscores, periods and dashes. Changing this forces a new logz Sub Account to be created.
	email?: null | string @go(Email,*string)

	// First Name of the user. Possible values must be between 1 and 50 characters in length. Changing this forces a new logz Sub Account to be created.
	firstName?: null | string @go(FirstName,*string)

	// Last Name of the user. Possible values must be between 1 and 50 characters in length. Changing this forces a new logz Sub Account to be created.
	lastName?: null | string @go(LastName,*string)

	// Phone number of the user used by Logz for contacting them if needed. Possible values must be between 1 and 40 characters in length. Changing this forces a new logz Sub Account to be created.
	phoneNumber?: null | string @go(PhoneNumber,*string)
}

#SubAccountUserObservation: {
	// Email of the user used by Logz for contacting them if needed. A valid email address consists of an email prefix and an email domain. The prefix and domain may contain only letters, numbers, underscores, periods and dashes. Changing this forces a new logz Sub Account to be created.
	email?: null | string @go(Email,*string)

	// First Name of the user. Possible values must be between 1 and 50 characters in length. Changing this forces a new logz Sub Account to be created.
	firstName?: null | string @go(FirstName,*string)

	// Last Name of the user. Possible values must be between 1 and 50 characters in length. Changing this forces a new logz Sub Account to be created.
	lastName?: null | string @go(LastName,*string)

	// Phone number of the user used by Logz for contacting them if needed. Possible values must be between 1 and 40 characters in length. Changing this forces a new logz Sub Account to be created.
	phoneNumber?: null | string @go(PhoneNumber,*string)
}

#SubAccountUserParameters: {
	// Email of the user used by Logz for contacting them if needed. A valid email address consists of an email prefix and an email domain. The prefix and domain may contain only letters, numbers, underscores, periods and dashes. Changing this forces a new logz Sub Account to be created.
	// +kubebuilder:validation:Optional
	email?: null | string @go(Email,*string)

	// First Name of the user. Possible values must be between 1 and 50 characters in length. Changing this forces a new logz Sub Account to be created.
	// +kubebuilder:validation:Optional
	firstName?: null | string @go(FirstName,*string)

	// Last Name of the user. Possible values must be between 1 and 50 characters in length. Changing this forces a new logz Sub Account to be created.
	// +kubebuilder:validation:Optional
	lastName?: null | string @go(LastName,*string)

	// Phone number of the user used by Logz for contacting them if needed. Possible values must be between 1 and 40 characters in length. Changing this forces a new logz Sub Account to be created.
	// +kubebuilder:validation:Optional
	phoneNumber?: null | string @go(PhoneNumber,*string)
}

// SubAccountSpec defines the desired state of SubAccount
#SubAccountSpec: {
	forProvider: #SubAccountParameters @go(ForProvider)

	// THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored
	// unless the relevant Crossplane feature flag is enabled, and may be
	// changed or removed without notice.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #SubAccountInitParameters @go(InitProvider)
}

// SubAccountStatus defines the observed state of SubAccount.
#SubAccountStatus: {
	atProvider?: #SubAccountObservation @go(AtProvider)
}

// SubAccount is the Schema for the SubAccounts API. Manages a logz Sub Account.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SubAccount: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.user) || has(self.initProvider.user)",message="user is a required parameter"
	spec:    #SubAccountSpec   @go(Spec)
	status?: #SubAccountStatus @go(Status)
}

// SubAccountList contains a list of SubAccounts
#SubAccountList: {
	items: [...#SubAccount] @go(Items,[]SubAccount)
}
