// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/storage/v1beta1

package v1beta1

#BlobInitParameters: {
	// The access tier of the storage blob. Possible values are Archive, Cool and Hot.
	accessTier?: null | string @go(AccessTier,*string)

	// Controls the cache control header content of the response when blob is requested .
	cacheControl?: null | string @go(CacheControl,*string)

	// The MD5 sum of the blob contents. Cannot be defined if source_uri is defined, or if blob type is Append or Page. Changing this forces a new resource to be created.
	contentMd5?: null | string @go(ContentMd5,*string)

	// The content type of the storage blob. Cannot be defined if source_uri is defined. Defaults to application/octet-stream.
	contentType?: null | string @go(ContentType,*string)

	// A map of custom blob metadata.
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The number of workers per CPU core to run for concurrent uploads. Defaults to 8. Changing this forces a new resource to be created.
	parallelism?: null | float64 @go(Parallelism,*float64)

	// Used only for page blobs to specify the size in bytes of the blob to be created. Must be a multiple of 512. Defaults to 0. Changing this forces a new resource to be created.
	size?: null | float64 @go(Size,*float64)

	// An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if source_content or source_uri is specified. Changing this forces a new resource to be created.
	source?: null | string @go(Source,*string)

	// The content for this blob which should be defined inline. This field can only be specified for Block blobs and cannot be specified if source or source_uri is specified. Changing this forces a new resource to be created.
	sourceContent?: null | string @go(SourceContent,*string)

	// The URI of an existing blob, or a file in the Azure File service, to use as the source contents for the blob to be created. Changing this forces a new resource to be created. This field cannot be specified for Append blobs and cannot be specified if source or source_content is specified.
	sourceUri?: null | string @go(SourceURI,*string)

	// The type of the storage blob to be created. Possible values are Append, Block or Page. Changing this forces a new resource to be created.
	type?: null | string @go(Type,*string)
}

#BlobObservation: {
	// The access tier of the storage blob. Possible values are Archive, Cool and Hot.
	accessTier?: null | string @go(AccessTier,*string)

	// Controls the cache control header content of the response when blob is requested .
	cacheControl?: null | string @go(CacheControl,*string)

	// The MD5 sum of the blob contents. Cannot be defined if source_uri is defined, or if blob type is Append or Page. Changing this forces a new resource to be created.
	contentMd5?: null | string @go(ContentMd5,*string)

	// The content type of the storage blob. Cannot be defined if source_uri is defined. Defaults to application/octet-stream.
	contentType?: null | string @go(ContentType,*string)

	// The ID of the Storage Blob.
	id?: null | string @go(ID,*string)

	// A map of custom blob metadata.
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The number of workers per CPU core to run for concurrent uploads. Defaults to 8. Changing this forces a new resource to be created.
	parallelism?: null | float64 @go(Parallelism,*float64)

	// Used only for page blobs to specify the size in bytes of the blob to be created. Must be a multiple of 512. Defaults to 0. Changing this forces a new resource to be created.
	size?: null | float64 @go(Size,*float64)

	// An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if source_content or source_uri is specified. Changing this forces a new resource to be created.
	source?: null | string @go(Source,*string)

	// The content for this blob which should be defined inline. This field can only be specified for Block blobs and cannot be specified if source or source_uri is specified. Changing this forces a new resource to be created.
	sourceContent?: null | string @go(SourceContent,*string)

	// The URI of an existing blob, or a file in the Azure File service, to use as the source contents for the blob to be created. Changing this forces a new resource to be created. This field cannot be specified for Append blobs and cannot be specified if source or source_content is specified.
	sourceUri?: null | string @go(SourceURI,*string)

	// Specifies the storage account in which to create the storage container. Changing this forces a new resource to be created.
	// Changing this forces a new resource to be created.
	storageAccountName?: null | string @go(StorageAccountName,*string)

	// The name of the storage container in which this blob should be created. Changing this forces a new resource to be created.
	storageContainerName?: null | string @go(StorageContainerName,*string)

	// The type of the storage blob to be created. Possible values are Append, Block or Page. Changing this forces a new resource to be created.
	type?: null | string @go(Type,*string)

	// The URL of the blob
	url?: null | string @go(URL,*string)
}

#BlobParameters: {
	// The access tier of the storage blob. Possible values are Archive, Cool and Hot.
	// +kubebuilder:validation:Optional
	accessTier?: null | string @go(AccessTier,*string)

	// Controls the cache control header content of the response when blob is requested .
	// +kubebuilder:validation:Optional
	cacheControl?: null | string @go(CacheControl,*string)

	// The MD5 sum of the blob contents. Cannot be defined if source_uri is defined, or if blob type is Append or Page. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	contentMd5?: null | string @go(ContentMd5,*string)

	// The content type of the storage blob. Cannot be defined if source_uri is defined. Defaults to application/octet-stream.
	// +kubebuilder:validation:Optional
	contentType?: null | string @go(ContentType,*string)

	// A map of custom blob metadata.
	// +kubebuilder:validation:Optional
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The number of workers per CPU core to run for concurrent uploads. Defaults to 8. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	parallelism?: null | float64 @go(Parallelism,*float64)

	// Used only for page blobs to specify the size in bytes of the blob to be created. Must be a multiple of 512. Defaults to 0. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	size?: null | float64 @go(Size,*float64)

	// An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if source_content or source_uri is specified. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	source?: null | string @go(Source,*string)

	// The content for this blob which should be defined inline. This field can only be specified for Block blobs and cannot be specified if source or source_uri is specified. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	sourceContent?: null | string @go(SourceContent,*string)

	// The URI of an existing blob, or a file in the Azure File service, to use as the source contents for the blob to be created. Changing this forces a new resource to be created. This field cannot be specified for Append blobs and cannot be specified if source or source_content is specified.
	// +kubebuilder:validation:Optional
	sourceUri?: null | string @go(SourceURI,*string)

	// Specifies the storage account in which to create the storage container. Changing this forces a new resource to be created.
	// Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Account
	// +kubebuilder:validation:Optional
	storageAccountName?: null | string @go(StorageAccountName,*string)

	// The name of the storage container in which this blob should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Container
	// +kubebuilder:validation:Optional
	storageContainerName?: null | string @go(StorageContainerName,*string)

	// The type of the storage blob to be created. Possible values are Append, Block or Page. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

// BlobSpec defines the desired state of Blob
#BlobSpec: {
	forProvider: #BlobParameters @go(ForProvider)

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
	initProvider?: #BlobInitParameters @go(InitProvider)
}

// BlobStatus defines the observed state of Blob.
#BlobStatus: {
	atProvider?: #BlobObservation @go(AtProvider)
}

// Blob is the Schema for the Blobs API. Manages a Blob within a Storage Container.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Blob: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.type) || has(self.initProvider.type)",message="type is a required parameter"
	spec:    #BlobSpec   @go(Spec)
	status?: #BlobStatus @go(Status)
}

// BlobList contains a list of Blobs
#BlobList: {
	items: [...#Blob] @go(Items,[]Blob)
}
