// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/appstream/v1beta1

package v1beta1

#UserStackAssociationObservation: {
	// Unique ID of the appstream User Stack association.
	id?: null | string @go(ID,*string)
}

#UserStackAssociationParameters: {
	// Authentication type for the user.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/appstream/v1beta1.User
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("authentication_type",false)
	// +kubebuilder:validation:Optional
	authenticationType?: null | string @go(AuthenticationType,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Whether a welcome email is sent to a user after the user is created in the user pool.
	// +kubebuilder:validation:Optional
	sendEmailNotification?: null | bool @go(SendEmailNotification,*bool)

	// Name of the stack that is associated with the user.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/appstream/v1beta1.Stack
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("name",false)
	// +kubebuilder:validation:Optional
	stackName?: null | string @go(StackName,*string)

	// Email address of the user who is associated with the stack.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/appstream/v1beta1.User
	// +kubebuilder:validation:Optional
	userName?: null | string @go(UserName,*string)
}

// UserStackAssociationSpec defines the desired state of UserStackAssociation
#UserStackAssociationSpec: {
	forProvider: #UserStackAssociationParameters @go(ForProvider)
}

// UserStackAssociationStatus defines the observed state of UserStackAssociation.
#UserStackAssociationStatus: {
	atProvider?: #UserStackAssociationObservation @go(AtProvider)
}

// UserStackAssociation is the Schema for the UserStackAssociations API. Manages an AppStream User Stack association.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#UserStackAssociation: {
	spec:    #UserStackAssociationSpec   @go(Spec)
	status?: #UserStackAssociationStatus @go(Status)
}

// UserStackAssociationList contains a list of UserStackAssociations
#UserStackAssociationList: {
	items: [...#UserStackAssociation] @go(Items,[]UserStackAssociation)
}
