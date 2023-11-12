// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/compute/v1beta1

package v1beta1

#GalleryApplicationInitParameters: {
	// A description of the Gallery Application.
	description?: null | string @go(Description,*string)

	// The end of life date in RFC3339 format of the Gallery Application.
	endOfLifeDate?: null | string @go(EndOfLifeDate,*string)

	// The End User Licence Agreement of the Gallery Application.
	eula?: null | string @go(Eula,*string)

	// The Azure Region where the Gallery Application exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The URI containing the Privacy Statement associated with the Gallery Application.
	privacyStatementUri?: null | string @go(PrivacyStatementURI,*string)

	// The URI containing the Release Notes associated with the Gallery Application.
	releaseNoteUri?: null | string @go(ReleaseNoteURI,*string)

	// The type of the Operating System supported for the Gallery Application. Possible values are Linux and Windows. Changing this forces a new resource to be created.
	supportedOsType?: null | string @go(SupportedOsType,*string)

	// A mapping of tags to assign to the Gallery Application.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#GalleryApplicationObservation: {
	// A description of the Gallery Application.
	description?: null | string @go(Description,*string)

	// The end of life date in RFC3339 format of the Gallery Application.
	endOfLifeDate?: null | string @go(EndOfLifeDate,*string)

	// The End User Licence Agreement of the Gallery Application.
	eula?: null | string @go(Eula,*string)

	// The ID of the Shared Image Gallery. Changing this forces a new resource to be created.
	galleryId?: null | string @go(GalleryID,*string)

	// The ID of the Gallery Application.
	id?: null | string @go(ID,*string)

	// The Azure Region where the Gallery Application exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The URI containing the Privacy Statement associated with the Gallery Application.
	privacyStatementUri?: null | string @go(PrivacyStatementURI,*string)

	// The URI containing the Release Notes associated with the Gallery Application.
	releaseNoteUri?: null | string @go(ReleaseNoteURI,*string)

	// The type of the Operating System supported for the Gallery Application. Possible values are Linux and Windows. Changing this forces a new resource to be created.
	supportedOsType?: null | string @go(SupportedOsType,*string)

	// A mapping of tags to assign to the Gallery Application.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#GalleryApplicationParameters: {
	// A description of the Gallery Application.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The end of life date in RFC3339 format of the Gallery Application.
	// +kubebuilder:validation:Optional
	endOfLifeDate?: null | string @go(EndOfLifeDate,*string)

	// The End User Licence Agreement of the Gallery Application.
	// +kubebuilder:validation:Optional
	eula?: null | string @go(Eula,*string)

	// The ID of the Shared Image Gallery. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/compute/v1beta1.SharedImageGallery
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	galleryId?: null | string @go(GalleryID,*string)

	// The Azure Region where the Gallery Application exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The URI containing the Privacy Statement associated with the Gallery Application.
	// +kubebuilder:validation:Optional
	privacyStatementUri?: null | string @go(PrivacyStatementURI,*string)

	// The URI containing the Release Notes associated with the Gallery Application.
	// +kubebuilder:validation:Optional
	releaseNoteUri?: null | string @go(ReleaseNoteURI,*string)

	// The type of the Operating System supported for the Gallery Application. Possible values are Linux and Windows. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	supportedOsType?: null | string @go(SupportedOsType,*string)

	// A mapping of tags to assign to the Gallery Application.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// GalleryApplicationSpec defines the desired state of GalleryApplication
#GalleryApplicationSpec: {
	forProvider: #GalleryApplicationParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #GalleryApplicationInitParameters @go(InitProvider)
}

// GalleryApplicationStatus defines the observed state of GalleryApplication.
#GalleryApplicationStatus: {
	atProvider?: #GalleryApplicationObservation @go(AtProvider)
}

// GalleryApplication is the Schema for the GalleryApplications API. Manages a Gallery Application.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#GalleryApplication: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.supportedOsType) || (has(self.initProvider) && has(self.initProvider.supportedOsType))",message="spec.forProvider.supportedOsType is a required parameter"
	spec:    #GalleryApplicationSpec   @go(Spec)
	status?: #GalleryApplicationStatus @go(Status)
}

// GalleryApplicationList contains a list of GalleryApplications
#GalleryApplicationList: {
	items: [...#GalleryApplication] @go(Items,[]GalleryApplication)
}
