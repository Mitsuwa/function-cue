// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/cloudplatform/v1beta1

package v1beta1

#ProjectInitParameters: {
	// Controls whether the 'default' network exists on the project. Defaults
	// to true, where it is created. Therefore, for quota purposes, you will still need to have 1
	// network slot available to create the project successfully, even if you set auto_create_network to
	// false.googleapis.com on the project to interact
	// with the GCE API and currently leaves it enabled.
	autoCreateNetwork?: null | bool @go(AutoCreateNetwork,*bool)

	// The alphanumeric ID of the billing account this project
	// belongs to.user) on the billing account.
	// See Google Cloud Billing API Access Control
	// for more details.
	billingAccount?: null | string @go(BillingAccount,*string)

	// A set of key/value label pairs to assign to the project.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The display name of the project.
	name?: null | string @go(Name,*string)

	// The numeric ID of the organization this project belongs to.
	// Changing this forces a new project to be created.  Only one of
	// org_id or folder_id may be specified. If the org_id is
	// specified then the project is created at the top level. Changing
	// this forces the project to be migrated to the newly specified
	// organization.
	// The numeric ID of the organization this project belongs to.
	orgId?: null | string @go(OrgID,*string)

	// The project ID. Changing this forces a new project to be created.
	projectId?:  null | string @go(ProjectID,*string)
	skipDelete?: null | bool   @go(SkipDelete,*bool)
}

#ProjectObservation: {
	// Controls whether the 'default' network exists on the project. Defaults
	// to true, where it is created. Therefore, for quota purposes, you will still need to have 1
	// network slot available to create the project successfully, even if you set auto_create_network to
	// false.googleapis.com on the project to interact
	// with the GCE API and currently leaves it enabled.
	autoCreateNetwork?: null | bool @go(AutoCreateNetwork,*bool)

	// The alphanumeric ID of the billing account this project
	// belongs to.user) on the billing account.
	// See Google Cloud Billing API Access Control
	// for more details.
	billingAccount?: null | string @go(BillingAccount,*string)

	// The numeric ID of the folder this project should be
	// created under. Only one of org_id or folder_id may be
	// specified. If the folder_id is specified, then the project is
	// created under the specified folder. Changing this forces the
	// project to be migrated to the newly specified folder.
	folderId?: null | string @go(FolderID,*string)

	// an identifier for the resource with format projects/{{project}}
	id?: null | string @go(ID,*string)

	// A set of key/value label pairs to assign to the project.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The display name of the project.
	name?: null | string @go(Name,*string)

	// The numeric identifier of the project.
	number?: null | string @go(Number,*string)

	// The numeric ID of the organization this project belongs to.
	// Changing this forces a new project to be created.  Only one of
	// org_id or folder_id may be specified. If the org_id is
	// specified then the project is created at the top level. Changing
	// this forces the project to be migrated to the newly specified
	// organization.
	// The numeric ID of the organization this project belongs to.
	orgId?: null | string @go(OrgID,*string)

	// The project ID. Changing this forces a new project to be created.
	projectId?:  null | string @go(ProjectID,*string)
	skipDelete?: null | bool   @go(SkipDelete,*bool)
}

#ProjectParameters: {
	// Controls whether the 'default' network exists on the project. Defaults
	// to true, where it is created. Therefore, for quota purposes, you will still need to have 1
	// network slot available to create the project successfully, even if you set auto_create_network to
	// false.googleapis.com on the project to interact
	// with the GCE API and currently leaves it enabled.
	// +kubebuilder:validation:Optional
	autoCreateNetwork?: null | bool @go(AutoCreateNetwork,*bool)

	// The alphanumeric ID of the billing account this project
	// belongs to.user) on the billing account.
	// See Google Cloud Billing API Access Control
	// for more details.
	// +kubebuilder:validation:Optional
	billingAccount?: null | string @go(BillingAccount,*string)

	// The numeric ID of the folder this project should be
	// created under. Only one of org_id or folder_id may be
	// specified. If the folder_id is specified, then the project is
	// created under the specified folder. Changing this forces the
	// project to be migrated to the newly specified folder.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/cloudplatform/v1beta1.Folder
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("name",true)
	// +kubebuilder:validation:Optional
	folderId?: null | string @go(FolderID,*string)

	// A set of key/value label pairs to assign to the project.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The display name of the project.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The numeric ID of the organization this project belongs to.
	// Changing this forces a new project to be created.  Only one of
	// org_id or folder_id may be specified. If the org_id is
	// specified then the project is created at the top level. Changing
	// this forces the project to be migrated to the newly specified
	// organization.
	// The numeric ID of the organization this project belongs to.
	// +kubebuilder:validation:Optional
	orgId?: null | string @go(OrgID,*string)

	// The project ID. Changing this forces a new project to be created.
	// +kubebuilder:validation:Optional
	projectId?: null | string @go(ProjectID,*string)

	// +kubebuilder:validation:Optional
	skipDelete?: null | bool @go(SkipDelete,*bool)
}

// ProjectSpec defines the desired state of Project
#ProjectSpec: {
	forProvider: #ProjectParameters @go(ForProvider)

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
	initProvider?: #ProjectInitParameters @go(InitProvider)
}

// ProjectStatus defines the observed state of Project.
#ProjectStatus: {
	atProvider?: #ProjectObservation @go(AtProvider)
}

// Project is the Schema for the Projects API. Allows management of a Google Cloud Platform project.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Project: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || has(self.initProvider.name)",message="name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.projectId) || has(self.initProvider.projectId)",message="projectId is a required parameter"
	spec:    #ProjectSpec   @go(Spec)
	status?: #ProjectStatus @go(Status)
}

// ProjectList contains a list of Projects
#ProjectList: {
	items: [...#Project] @go(Items,[]Project)
}
