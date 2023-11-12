// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#RegionDiskResourcePolicyAttachmentInitParameters: {
	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// A reference to the region where the disk resides.
	region?: null | string @go(Region,*string)
}

#RegionDiskResourcePolicyAttachmentObservation: {
	// The name of the regional disk in which the resource policies are attached to.
	disk?: null | string @go(Disk,*string)

	// an identifier for the resource with format {{project}}/{{region}}/{{disk}}/{{name}}
	id?: null | string @go(ID,*string)

	// The resource policy to be attached to the disk for scheduling snapshot
	// creation. Do not specify the self link.
	name?: null | string @go(Name,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// A reference to the region where the disk resides.
	region?: null | string @go(Region,*string)
}

#RegionDiskResourcePolicyAttachmentParameters: {
	// The name of the regional disk in which the resource policies are attached to.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.RegionDisk
	// +kubebuilder:validation:Optional
	disk?: null | string @go(Disk,*string)

	// The resource policy to be attached to the disk for scheduling snapshot
	// creation. Do not specify the self link.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.ResourcePolicy
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// A reference to the region where the disk resides.
	// +kubebuilder:validation:Optional
	region?: null | string @go(Region,*string)
}

// RegionDiskResourcePolicyAttachmentSpec defines the desired state of RegionDiskResourcePolicyAttachment
#RegionDiskResourcePolicyAttachmentSpec: {
	forProvider: #RegionDiskResourcePolicyAttachmentParameters @go(ForProvider)

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
	initProvider?: #RegionDiskResourcePolicyAttachmentInitParameters @go(InitProvider)
}

// RegionDiskResourcePolicyAttachmentStatus defines the observed state of RegionDiskResourcePolicyAttachment.
#RegionDiskResourcePolicyAttachmentStatus: {
	atProvider?: #RegionDiskResourcePolicyAttachmentObservation @go(AtProvider)
}

// RegionDiskResourcePolicyAttachment is the Schema for the RegionDiskResourcePolicyAttachments API. Adds existing resource policies to a disk.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#RegionDiskResourcePolicyAttachment: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.region) || has(self.initProvider.region)",message="region is a required parameter"
	spec:    #RegionDiskResourcePolicyAttachmentSpec   @go(Spec)
	status?: #RegionDiskResourcePolicyAttachmentStatus @go(Status)
}

// RegionDiskResourcePolicyAttachmentList contains a list of RegionDiskResourcePolicyAttachments
#RegionDiskResourcePolicyAttachmentList: {
	items: [...#RegionDiskResourcePolicyAttachment] @go(Items,[]RegionDiskResourcePolicyAttachment)
}
