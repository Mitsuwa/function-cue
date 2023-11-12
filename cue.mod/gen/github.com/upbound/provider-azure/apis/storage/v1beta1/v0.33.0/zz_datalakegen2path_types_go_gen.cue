// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/storage/v1beta1

package v1beta1

#DataLakeGen2PathAceObservation: {
	// Specifies the Object ID of the Azure Active Directory User or Group that the entry relates to. Only valid for user or group entries.
	id?: null | string @go(ID,*string)

	// Specifies the permissions for the entry in rwx form. For example, rwx gives full permissions but r-- only gives read permissions.
	permissions?: null | string @go(Permissions,*string)

	// Specifies whether the ACE represents an access entry or a default entry. Default value is access.
	scope?: null | string @go(Scope,*string)

	// Specifies the type of entry. Can be user, group, mask or other.
	type?: null | string @go(Type,*string)
}

#DataLakeGen2PathAceParameters: {
	// Specifies the Object ID of the Azure Active Directory User or Group that the entry relates to. Only valid for user or group entries.
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)

	// Specifies the permissions for the entry in rwx form. For example, rwx gives full permissions but r-- only gives read permissions.
	// +kubebuilder:validation:Required
	permissions?: null | string @go(Permissions,*string)

	// Specifies whether the ACE represents an access entry or a default entry. Default value is access.
	// +kubebuilder:validation:Optional
	scope?: null | string @go(Scope,*string)

	// Specifies the type of entry. Can be user, group, mask or other.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#DataLakeGen2PathObservation: {
	// One or more ace blocks as defined below to specify the entries for the ACL for the path.
	ace?: [...#DataLakeGen2PathAceObservation] @go(Ace,[]DataLakeGen2PathAceObservation)

	// The name of the Data Lake Gen2 File System which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created.
	filesystemName?: null | string @go(FileSystemName,*string)

	// Specifies the Object ID of the Azure Active Directory Group to make the owning group. Possible values also include $superuser.
	group?: null | string @go(Group,*string)

	// The ID of the Data Lake Gen2 File System.
	id?: null | string @go(ID,*string)

	// Specifies the Object ID of the Azure Active Directory User to make the owning user. Possible values also include $superuser.
	owner?: null | string @go(Owner,*string)

	// The path which should be created within the Data Lake Gen2 File System in the Storage Account. Changing this forces a new resource to be created.
	path?: null | string @go(Path,*string)

	// Specifies the type for path to create. Currently only directory is supported. Changing this forces a new resource to be created.
	resource?: null | string @go(Resource,*string)

	// Specifies the ID of the Storage Account in which the Data Lake Gen2 File System should exist. Changing this forces a new resource to be created.
	storageAccountId?: null | string @go(StorageAccountID,*string)
}

#DataLakeGen2PathParameters: {
	// One or more ace blocks as defined below to specify the entries for the ACL for the path.
	// +kubebuilder:validation:Optional
	ace?: [...#DataLakeGen2PathAceParameters] @go(Ace,[]DataLakeGen2PathAceParameters)

	// The name of the Data Lake Gen2 File System which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.DataLakeGen2FileSystem
	// +kubebuilder:validation:Optional
	filesystemName?: null | string @go(FileSystemName,*string)

	// Specifies the Object ID of the Azure Active Directory Group to make the owning group. Possible values also include $superuser.
	// +kubebuilder:validation:Optional
	group?: null | string @go(Group,*string)

	// Specifies the Object ID of the Azure Active Directory User to make the owning user. Possible values also include $superuser.
	// +kubebuilder:validation:Optional
	owner?: null | string @go(Owner,*string)

	// The path which should be created within the Data Lake Gen2 File System in the Storage Account. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	path?: null | string @go(Path,*string)

	// Specifies the type for path to create. Currently only directory is supported. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	resource?: null | string @go(Resource,*string)

	// Specifies the ID of the Storage Account in which the Data Lake Gen2 File System should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	storageAccountId?: null | string @go(StorageAccountID,*string)
}

// DataLakeGen2PathSpec defines the desired state of DataLakeGen2Path
#DataLakeGen2PathSpec: {
	forProvider: #DataLakeGen2PathParameters @go(ForProvider)
}

// DataLakeGen2PathStatus defines the observed state of DataLakeGen2Path.
#DataLakeGen2PathStatus: {
	atProvider?: #DataLakeGen2PathObservation @go(AtProvider)
}

// DataLakeGen2Path is the Schema for the DataLakeGen2Paths API. Manages a Data Lake Gen2 Path in a File System within an Azure Storage Account.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#DataLakeGen2Path: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.path)",message="path is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.resource)",message="resource is a required parameter"
	spec:    #DataLakeGen2PathSpec   @go(Spec)
	status?: #DataLakeGen2PathStatus @go(Status)
}

// DataLakeGen2PathList contains a list of DataLakeGen2Paths
#DataLakeGen2PathList: {
	items: [...#DataLakeGen2Path] @go(Items,[]DataLakeGen2Path)
}
