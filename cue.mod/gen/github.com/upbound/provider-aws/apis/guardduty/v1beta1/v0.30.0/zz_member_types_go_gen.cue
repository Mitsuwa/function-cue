// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/guardduty/v1beta1

package v1beta1

#MemberObservation: {
	// The ID of the GuardDuty member
	id?: null | string @go(ID,*string)

	// The status of the relationship between the member account and its primary account. More information can be found in Amazon GuardDuty API Reference.
	relationshipStatus?: null | string @go(RelationshipStatus,*string)
}

#MemberParameters: {
	// AWS account ID for member account.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/guardduty/v1beta1.Detector
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("account_id",true)
	// +kubebuilder:validation:Optional
	accountId?: null | string @go(AccountID,*string)

	// The detector ID of the GuardDuty account where you want to create member accounts.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/guardduty/v1beta1.Detector
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	detectorId?: null | string @go(DetectorID,*string)

	// Boolean whether an email notification is sent to the accounts. Defaults to false.
	// +kubebuilder:validation:Optional
	disableEmailNotification?: null | bool @go(DisableEmailNotification,*bool)

	// Email address for member account.
	// +kubebuilder:validation:Required
	email?: null | string @go(Email,*string)

	// Message for invitation.
	// +kubebuilder:validation:Optional
	invitationMessage?: null | string @go(InvitationMessage,*string)

	// Boolean whether to invite the account to GuardDuty as a member. Defaults to false.
	// +kubebuilder:validation:Optional
	invite?: null | bool @go(Invite,*bool)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// MemberSpec defines the desired state of Member
#MemberSpec: {
	forProvider: #MemberParameters @go(ForProvider)
}

// MemberStatus defines the observed state of Member.
#MemberStatus: {
	atProvider?: #MemberObservation @go(AtProvider)
}

// Member is the Schema for the Members API. Provides a resource to manage a GuardDuty member
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Member: {
	spec:    #MemberSpec   @go(Spec)
	status?: #MemberStatus @go(Status)
}

// MemberList contains a list of Members
#MemberList: {
	items: [...#Member] @go(Items,[]Member)
}
