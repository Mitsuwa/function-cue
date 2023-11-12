// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/storage/v1beta1

package v1beta1

#ShareDirectoryInitParameters: {
	// A mapping of metadata to assign to this Directory.
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The name (or path) of the Directory that should be created within this File Share. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)
}

#ShareDirectoryObservation: {
	// The ID of the Directory within the File Share.
	id?: null | string @go(ID,*string)

	// A mapping of metadata to assign to this Directory.
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The name (or path) of the Directory that should be created within this File Share. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// The name of the File Share where this Directory should be created. Changing this forces a new resource to be created.
	shareName?: null | string @go(ShareName,*string)

	// The name of the Storage Account within which the File Share is located. Changing this forces a new resource to be created.
	storageAccountName?: null | string @go(StorageAccountName,*string)
}

#ShareDirectoryParameters: {
	// A mapping of metadata to assign to this Directory.
	// +kubebuilder:validation:Optional
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The name (or path) of the Directory that should be created within this File Share. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The name of the File Share where this Directory should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Share
	// +kubebuilder:validation:Optional
	shareName?: null | string @go(ShareName,*string)

	// The name of the Storage Account within which the File Share is located. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +kubebuilder:validation:Optional
	storageAccountName?: null | string @go(StorageAccountName,*string)
}

// ShareDirectorySpec defines the desired state of ShareDirectory
#ShareDirectorySpec: {
	forProvider: #ShareDirectoryParameters @go(ForProvider)

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
	initProvider?: #ShareDirectoryInitParameters @go(InitProvider)
}

// ShareDirectoryStatus defines the observed state of ShareDirectory.
#ShareDirectoryStatus: {
	atProvider?: #ShareDirectoryObservation @go(AtProvider)
}

// ShareDirectory is the Schema for the ShareDirectorys API. Manages a Directory within an Azure Storage File Share.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ShareDirectory: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	spec:    #ShareDirectorySpec   @go(Spec)
	status?: #ShareDirectoryStatus @go(Status)
}

// ShareDirectoryList contains a list of ShareDirectorys
#ShareDirectoryList: {
	items: [...#ShareDirectory] @go(Items,[]ShareDirectory)
}
