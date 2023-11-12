// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/datafactory/v1beta1

package v1beta1

#DataSetCosmosDBSQLAPIInitParameters: {
	// A map of additional properties to associate with the Data Factory Dataset.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Dataset.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The collection name of the Data Factory Dataset Azure Cosmos DB SQL API.
	collectionName?: null | string @go(CollectionName,*string)

	// The description for the Data Factory Dataset.
	description?: null | string @go(Description,*string)

	// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
	folder?: null | string @go(Folder,*string)

	// A map of parameters to associate with the Data Factory Dataset.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// A schema_column block as defined below.
	schemaColumn?: [...#DataSetCosmosDBSQLAPISchemaColumnInitParameters] @go(SchemaColumn,[]DataSetCosmosDBSQLAPISchemaColumnInitParameters)
}

#DataSetCosmosDBSQLAPIObservation: {
	// A map of additional properties to associate with the Data Factory Dataset.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Dataset.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The collection name of the Data Factory Dataset Azure Cosmos DB SQL API.
	collectionName?: null | string @go(CollectionName,*string)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Dataset.
	description?: null | string @go(Description,*string)

	// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
	folder?: null | string @go(Folder,*string)

	// The ID of the Data Factory Dataset.
	id?: null | string @go(ID,*string)

	// The Data Factory Linked Service name in which to associate the Dataset with.
	linkedServiceName?: null | string @go(LinkedServiceName,*string)

	// A map of parameters to associate with the Data Factory Dataset.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// A schema_column block as defined below.
	schemaColumn?: [...#DataSetCosmosDBSQLAPISchemaColumnObservation] @go(SchemaColumn,[]DataSetCosmosDBSQLAPISchemaColumnObservation)
}

#DataSetCosmosDBSQLAPIParameters: {
	// A map of additional properties to associate with the Data Factory Dataset.
	// +kubebuilder:validation:Optional
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Dataset.
	// +kubebuilder:validation:Optional
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The collection name of the Data Factory Dataset Azure Cosmos DB SQL API.
	// +kubebuilder:validation:Optional
	collectionName?: null | string @go(CollectionName,*string)

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

	// The Data Factory Linked Service name in which to associate the Dataset with.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/datafactory/v1beta1.LinkedServiceCosmosDB
	// +kubebuilder:validation:Optional
	linkedServiceName?: null | string @go(LinkedServiceName,*string)

	// A map of parameters to associate with the Data Factory Dataset.
	// +kubebuilder:validation:Optional
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// A schema_column block as defined below.
	// +kubebuilder:validation:Optional
	schemaColumn?: [...#DataSetCosmosDBSQLAPISchemaColumnParameters] @go(SchemaColumn,[]DataSetCosmosDBSQLAPISchemaColumnParameters)
}

#DataSetCosmosDBSQLAPISchemaColumnInitParameters: {
	// The description of the column.
	description?: null | string @go(Description,*string)

	// The name of the column.
	name?: null | string @go(Name,*string)

	// Type of the column. Valid values are Byte, Byte[], Boolean, Date, DateTime,DateTimeOffset, Decimal, Double, Guid, Int16, Int32, Int64, Single, String, TimeSpan. Please note these values are case sensitive.
	type?: null | string @go(Type,*string)
}

#DataSetCosmosDBSQLAPISchemaColumnObservation: {
	// The description of the column.
	description?: null | string @go(Description,*string)

	// The name of the column.
	name?: null | string @go(Name,*string)

	// Type of the column. Valid values are Byte, Byte[], Boolean, Date, DateTime,DateTimeOffset, Decimal, Double, Guid, Int16, Int32, Int64, Single, String, TimeSpan. Please note these values are case sensitive.
	type?: null | string @go(Type,*string)
}

#DataSetCosmosDBSQLAPISchemaColumnParameters: {
	// The description of the column.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The name of the column.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Type of the column. Valid values are Byte, Byte[], Boolean, Date, DateTime,DateTimeOffset, Decimal, Double, Guid, Int16, Int32, Int64, Single, String, TimeSpan. Please note these values are case sensitive.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

// DataSetCosmosDBSQLAPISpec defines the desired state of DataSetCosmosDBSQLAPI
#DataSetCosmosDBSQLAPISpec: {
	forProvider: #DataSetCosmosDBSQLAPIParameters @go(ForProvider)

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
	initProvider?: #DataSetCosmosDBSQLAPIInitParameters @go(InitProvider)
}

// DataSetCosmosDBSQLAPIStatus defines the observed state of DataSetCosmosDBSQLAPI.
#DataSetCosmosDBSQLAPIStatus: {
	atProvider?: #DataSetCosmosDBSQLAPIObservation @go(AtProvider)
}

// DataSetCosmosDBSQLAPI is the Schema for the DataSetCosmosDBSQLAPIs API. Manages an Azure Cosmos DB SQL API Dataset inside an Azure Data Factory.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#DataSetCosmosDBSQLAPI: {
	spec:    #DataSetCosmosDBSQLAPISpec   @go(Spec)
	status?: #DataSetCosmosDBSQLAPIStatus @go(Status)
}

// DataSetCosmosDBSQLAPIList contains a list of DataSetCosmosDBSQLAPIs
#DataSetCosmosDBSQLAPIList: {
	items: [...#DataSetCosmosDBSQLAPI] @go(Items,[]DataSetCosmosDBSQLAPI)
}
