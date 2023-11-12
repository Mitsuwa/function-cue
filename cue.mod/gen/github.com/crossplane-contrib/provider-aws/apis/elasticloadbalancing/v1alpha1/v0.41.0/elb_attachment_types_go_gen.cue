// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/elasticloadbalancing/v1alpha1

package v1alpha1

// ELBAttachmentParameters define the desired state of an AWS ELBAttachment.
#ELBAttachmentParameters: {
	// Region is the region you'd like your ELBAttachment to be in.
	region: string @go(Region)

	// Name of the Elastic Load Balancer to which the instances will attach.
	// +immutable
	// +optional
	elbName?: string @go(ELBName)

	// List of identities of the instances to be attached.
	// +immutable
	instanceId: string @go(InstanceID)
}

// An ELBAttachmentSpec defines the desired state of an ELBAttachment.
#ELBAttachmentSpec: {
	forProvider: #ELBAttachmentParameters @go(ForProvider)
}

// ELBAttachmentObservation keeps the state for the external resource
#ELBAttachmentObservation: {
}

// An ELBAttachmentStatus represents the observed state of an ELBAttachmentAttachment.
#ELBAttachmentStatus: {
	atProvider?: #ELBAttachmentObservation @go(AtProvider)
}

// An ELBAttachment is a managed resource that represents attachment of an
// AWS Classic Load Balancer and an AWS EC2 instance.
// +kubebuilder:printcolumn:name="ELBNAME",type="string",JSONPath=".spec.forProvider.elbName"
// +kubebuilder:printcolumn:name="INSTANCEID",type="string",JSONPath=".spec.forProvider.instanceId"
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ELBAttachment: {
	spec:    #ELBAttachmentSpec   @go(Spec)
	status?: #ELBAttachmentStatus @go(Status)
}

// ELBAttachmentList contains a list of ELBAttachmentAttachment.
#ELBAttachmentList: {
	items: [...#ELBAttachment] @go(Items,[]ELBAttachment)
}
