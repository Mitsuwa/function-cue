// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/datafactory/v1beta1

package v1beta1

#AzureBlobStorageLocationObservation: {
	// The container on the Azure Blob Storage Account hosting the file.
	container?: null | string @go(Container,*string)

	// Is the container using dynamic expression, function or system variables? Defaults to false.
	dynamicContainerEnabled?: null | bool @go(DynamicContainerEnabled,*bool)

	// Is the filename using dynamic expression, function or system variables? Defaults to false.
	dynamicFilenameEnabled?: null | bool @go(DynamicFilenameEnabled,*bool)

	// Is the path using dynamic expression, function or system variables? Defaults to false.
	dynamicPathEnabled?: null | bool @go(DynamicPathEnabled,*bool)

	// The filename of the file in the blob container.
	filename?: null | string @go(Filename,*string)

	// The folder path to the file in the blob container.
	path?: null | string @go(Path,*string)
}

#AzureBlobStorageLocationParameters: {
	// The container on the Azure Blob Storage Account hosting the file.
	// +kubebuilder:validation:Required
	container?: null | string @go(Container,*string)

	// Is the container using dynamic expression, function or system variables? Defaults to false.
	// +kubebuilder:validation:Optional
	dynamicContainerEnabled?: null | bool @go(DynamicContainerEnabled,*bool)

	// Is the filename using dynamic expression, function or system variables? Defaults to false.
	// +kubebuilder:validation:Optional
	dynamicFilenameEnabled?: null | bool @go(DynamicFilenameEnabled,*bool)

	// Is the path using dynamic expression, function or system variables? Defaults to false.
	// +kubebuilder:validation:Optional
	dynamicPathEnabled?: null | bool @go(DynamicPathEnabled,*bool)

	// The filename of the file in the blob container.
	// +kubebuilder:validation:Optional
	filename?: null | string @go(Filename,*string)

	// The folder path to the file in the blob container.
	// +kubebuilder:validation:Optional
	path?: null | string @go(Path,*string)
}

#CompressionObservation: {
	// The level of compression. Possible values are Fastest and Optimal.
	level?: null | string @go(Level,*string)

	// The type of compression used during transport. Possible values are BZip2, Deflate, GZip, Tar, TarGZip and ZipDeflate.
	type?: null | string @go(Type,*string)
}

#CompressionParameters: {
	// The level of compression. Possible values are Fastest and Optimal.
	// +kubebuilder:validation:Optional
	level?: null | string @go(Level,*string)

	// The type of compression used during transport. Possible values are BZip2, Deflate, GZip, Tar, TarGZip and ZipDeflate.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#DataSetBinaryObservation: {
	// A map of additional properties to associate with the Data Factory Binary Dataset.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Binary Dataset.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// A azure_blob_storage_location block as defined below.
	azureBlobStorageLocation?: [...#AzureBlobStorageLocationObservation] @go(AzureBlobStorageLocation,[]AzureBlobStorageLocationObservation)

	// A compression block as defined below.
	compression?: [...#CompressionObservation] @go(Compression,[]CompressionObservation)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Dataset.
	description?: null | string @go(Description,*string)

	// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
	folder?: null | string @go(Folder,*string)

	// A http_server_location block as defined below.
	httpServerLocation?: [...#HTTPServerLocationObservation] @go(HTTPServerLocation,[]HTTPServerLocationObservation)

	// The ID of the Data Factory Dataset.
	id?: null | string @go(ID,*string)

	// The Data Factory Linked Service name in which to associate the Binary Dataset with.
	linkedServiceName?: null | string @go(LinkedServiceName,*string)

	// Specifies a list of parameters to associate with the Data Factory Binary Dataset.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// A sftp_server_location block as defined below.
	sftpServerLocation?: [...#SFTPServerLocationObservation] @go(SFTPServerLocation,[]SFTPServerLocationObservation)
}

#DataSetBinaryParameters: {
	// A map of additional properties to associate with the Data Factory Binary Dataset.
	// +kubebuilder:validation:Optional
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Binary Dataset.
	// +kubebuilder:validation:Optional
	annotations?: [...null | string] @go(Annotations,[]*string)

	// A azure_blob_storage_location block as defined below.
	// +kubebuilder:validation:Optional
	azureBlobStorageLocation?: [...#AzureBlobStorageLocationParameters] @go(AzureBlobStorageLocation,[]AzureBlobStorageLocationParameters)

	// A compression block as defined below.
	// +kubebuilder:validation:Optional
	compression?: [...#CompressionParameters] @go(Compression,[]CompressionParameters)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/datafactory/v1beta1.Factory
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Dataset.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
	// +kubebuilder:validation:Optional
	folder?: null | string @go(Folder,*string)

	// A http_server_location block as defined below.
	// +kubebuilder:validation:Optional
	httpServerLocation?: [...#HTTPServerLocationParameters] @go(HTTPServerLocation,[]HTTPServerLocationParameters)

	// The Data Factory Linked Service name in which to associate the Binary Dataset with.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/datafactory/v1beta1.LinkedServiceSFTP
	// +kubebuilder:validation:Optional
	linkedServiceName?: null | string @go(LinkedServiceName,*string)

	// Specifies a list of parameters to associate with the Data Factory Binary Dataset.
	// +kubebuilder:validation:Optional
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// A sftp_server_location block as defined below.
	// +kubebuilder:validation:Optional
	sftpServerLocation?: [...#SFTPServerLocationParameters] @go(SFTPServerLocation,[]SFTPServerLocationParameters)
}

#HTTPServerLocationObservation: {
	// Is the filename using dynamic expression, function or system variables? Defaults to false.
	dynamicFilenameEnabled?: null | bool @go(DynamicFilenameEnabled,*bool)

	// Is the path using dynamic expression, function or system variables? Defaults to false.
	dynamicPathEnabled?: null | bool @go(DynamicPathEnabled,*bool)

	// The filename of the file on the web server.
	filename?: null | string @go(Filename,*string)

	// The folder path to the file on the web server.
	path?: null | string @go(Path,*string)

	// The base URL to the web server hosting the file.
	relativeUrl?: null | string @go(RelativeURL,*string)
}

#HTTPServerLocationParameters: {
	// Is the filename using dynamic expression, function or system variables? Defaults to false.
	// +kubebuilder:validation:Optional
	dynamicFilenameEnabled?: null | bool @go(DynamicFilenameEnabled,*bool)

	// Is the path using dynamic expression, function or system variables? Defaults to false.
	// +kubebuilder:validation:Optional
	dynamicPathEnabled?: null | bool @go(DynamicPathEnabled,*bool)

	// The filename of the file on the web server.
	// +kubebuilder:validation:Required
	filename?: null | string @go(Filename,*string)

	// The folder path to the file on the web server.
	// +kubebuilder:validation:Required
	path?: null | string @go(Path,*string)

	// The base URL to the web server hosting the file.
	// +kubebuilder:validation:Required
	relativeUrl?: null | string @go(RelativeURL,*string)
}

#SFTPServerLocationObservation: {
	// Is the filename using dynamic expression, function or system variables? Defaults to false.
	dynamicFilenameEnabled?: null | bool @go(DynamicFilenameEnabled,*bool)

	// Is the path using dynamic expression, function or system variables? Defaults to false.
	dynamicPathEnabled?: null | bool @go(DynamicPathEnabled,*bool)

	// The filename of the file on the SFTP server.
	filename?: null | string @go(Filename,*string)

	// The folder path to the file on the SFTP server.
	path?: null | string @go(Path,*string)
}

#SFTPServerLocationParameters: {
	// Is the filename using dynamic expression, function or system variables? Defaults to false.
	// +kubebuilder:validation:Optional
	dynamicFilenameEnabled?: null | bool @go(DynamicFilenameEnabled,*bool)

	// Is the path using dynamic expression, function or system variables? Defaults to false.
	// +kubebuilder:validation:Optional
	dynamicPathEnabled?: null | bool @go(DynamicPathEnabled,*bool)

	// The filename of the file on the SFTP server.
	// +kubebuilder:validation:Required
	filename?: null | string @go(Filename,*string)

	// The folder path to the file on the SFTP server.
	// +kubebuilder:validation:Required
	path?: null | string @go(Path,*string)
}

// DataSetBinarySpec defines the desired state of DataSetBinary
#DataSetBinarySpec: {
	forProvider: #DataSetBinaryParameters @go(ForProvider)
}

// DataSetBinaryStatus defines the observed state of DataSetBinary.
#DataSetBinaryStatus: {
	atProvider?: #DataSetBinaryObservation @go(AtProvider)
}

// DataSetBinary is the Schema for the DataSetBinarys API. Manages a Data Factory Binary Dataset inside an Azure Data Factory.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#DataSetBinary: {
	spec:    #DataSetBinarySpec   @go(Spec)
	status?: #DataSetBinaryStatus @go(Status)
}

// DataSetBinaryList contains a list of DataSetBinarys
#DataSetBinaryList: {
	items: [...#DataSetBinary] @go(Items,[]DataSetBinary)
}
