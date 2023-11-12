// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#SharedVPCServiceProjectObservation: {
	deletionPolicy?: null | string @go(DeletionPolicy,*string)

	// The ID of a host project to associate.
	hostProject?: null | string @go(HostProject,*string)

	// an identifier for the resource with format {{host_project}}/{{service_project}}
	id?: null | string @go(ID,*string)

	// The ID of the project that will serve as a Shared VPC service project.
	serviceProject?: null | string @go(ServiceProject,*string)
}

#SharedVPCServiceProjectParameters: {
	// +kubebuilder:validation:Optional
	deletionPolicy?: null | string @go(DeletionPolicy,*string)

	// The ID of a host project to associate.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/cloudplatform/v1beta1.Project
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-gcp/config/common.ExtractProjectID()
	// +kubebuilder:validation:Optional
	hostProject?: null | string @go(HostProject,*string)

	// The ID of the project that will serve as a Shared VPC service project.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/cloudplatform/v1beta1.Project
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-gcp/config/common.ExtractProjectID()
	// +kubebuilder:validation:Optional
	serviceProject?: null | string @go(ServiceProject,*string)
}

// SharedVPCServiceProjectSpec defines the desired state of SharedVPCServiceProject
#SharedVPCServiceProjectSpec: {
	forProvider: #SharedVPCServiceProjectParameters @go(ForProvider)
}

// SharedVPCServiceProjectStatus defines the observed state of SharedVPCServiceProject.
#SharedVPCServiceProjectStatus: {
	atProvider?: #SharedVPCServiceProjectObservation @go(AtProvider)
}

// SharedVPCServiceProject is the Schema for the SharedVPCServiceProjects API. Enables the Google Compute Engine Shared VPC feature for a project, assigning it as a service project.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#SharedVPCServiceProject: {
	spec:    #SharedVPCServiceProjectSpec   @go(Spec)
	status?: #SharedVPCServiceProjectStatus @go(Status)
}

// SharedVPCServiceProjectList contains a list of SharedVPCServiceProjects
#SharedVPCServiceProjectList: {
	items: [...#SharedVPCServiceProject] @go(Items,[]SharedVPCServiceProject)
}
