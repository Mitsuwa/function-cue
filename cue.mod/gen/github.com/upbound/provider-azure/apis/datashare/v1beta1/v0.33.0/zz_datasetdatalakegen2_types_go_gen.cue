// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/datashare/v1beta1

package v1beta1

#DataSetDataLakeGen2Observation: {
	// The name of the Data Share Dataset.
	displayName?: null | string @go(DisplayName,*string)

	// The path of the file in the data lake file system to be shared with the receiver. Conflicts with folder_path Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
	filePath?: null | string @go(FilePath,*string)

	// The name of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
	fileSystemName?: null | string @go(FileSystemName,*string)

	// The folder path in the data lake file system to be shared with the receiver. Conflicts with file_path Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
	folderPath?: null | string @go(FolderPath,*string)

	// The resource ID of the Data Share Data Lake Gen2 Dataset.
	id?: null | string @go(ID,*string)

	// The resource ID of the Data Share where this Data Share Data Lake Gen2 Dataset should be created. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
	shareId?: null | string @go(ShareID,*string)

	// The resource id of the storage account of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
	storageAccountId?: null | string @go(StorageAccountID,*string)
}

#DataSetDataLakeGen2Parameters: {
	// The path of the file in the data lake file system to be shared with the receiver. Conflicts with folder_path Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
	// +kubebuilder:validation:Optional
	filePath?: null | string @go(FilePath,*string)

	// The name of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.DataLakeGen2FileSystem
	// +kubebuilder:validation:Optional
	fileSystemName?: null | string @go(FileSystemName,*string)

	// The folder path in the data lake file system to be shared with the receiver. Conflicts with file_path Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
	// +kubebuilder:validation:Optional
	folderPath?: null | string @go(FolderPath,*string)

	// The resource ID of the Data Share where this Data Share Data Lake Gen2 Dataset should be created. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
	// +crossplane:generate:reference:type=DataShare
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	shareId?: null | string @go(ShareID,*string)

	// The resource id of the storage account of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	storageAccountId?: null | string @go(StorageAccountID,*string)
}

// DataSetDataLakeGen2Spec defines the desired state of DataSetDataLakeGen2
#DataSetDataLakeGen2Spec: {
	forProvider: #DataSetDataLakeGen2Parameters @go(ForProvider)
}

// DataSetDataLakeGen2Status defines the observed state of DataSetDataLakeGen2.
#DataSetDataLakeGen2Status: {
	atProvider?: #DataSetDataLakeGen2Observation @go(AtProvider)
}

// DataSetDataLakeGen2 is the Schema for the DataSetDataLakeGen2s API. Manages a Data Share Data Lake Gen2 Dataset.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#DataSetDataLakeGen2: {
	spec:    #DataSetDataLakeGen2Spec   @go(Spec)
	status?: #DataSetDataLakeGen2Status @go(Status)
}

// DataSetDataLakeGen2List contains a list of DataSetDataLakeGen2s
#DataSetDataLakeGen2List: {
	items: [...#DataSetDataLakeGen2] @go(Items,[]DataSetDataLakeGen2)
}
