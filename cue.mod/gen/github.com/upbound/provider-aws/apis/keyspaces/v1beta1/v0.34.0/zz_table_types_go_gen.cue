// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/keyspaces/v1beta1

package v1beta1

#CapacitySpecificationObservation: {
	// The throughput capacity specified for read operations defined in read capacity units (RCUs).
	readCapacityUnits?: null | float64 @go(ReadCapacityUnits,*float64)

	// The read/write throughput capacity mode for a table. Valid values: PAY_PER_REQUEST, PROVISIONED. The default value is PAY_PER_REQUEST.
	throughputMode?: null | string @go(ThroughputMode,*string)

	// The throughput capacity specified for write operations defined in write capacity units (WCUs).
	writeCapacityUnits?: null | float64 @go(WriteCapacityUnits,*float64)
}

#CapacitySpecificationParameters: {
	// The throughput capacity specified for read operations defined in read capacity units (RCUs).
	// +kubebuilder:validation:Optional
	readCapacityUnits?: null | float64 @go(ReadCapacityUnits,*float64)

	// The read/write throughput capacity mode for a table. Valid values: PAY_PER_REQUEST, PROVISIONED. The default value is PAY_PER_REQUEST.
	// +kubebuilder:validation:Optional
	throughputMode?: null | string @go(ThroughputMode,*string)

	// The throughput capacity specified for write operations defined in write capacity units (WCUs).
	// +kubebuilder:validation:Optional
	writeCapacityUnits?: null | float64 @go(WriteCapacityUnits,*float64)
}

#ClusteringKeyObservation: {
	// The name of the column.
	name?: null | string @go(Name,*string)

	// The order modifier. Valid values: ASC, DESC.
	orderBy?: null | string @go(OrderBy,*string)
}

#ClusteringKeyParameters: {
	// The name of the column.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The order modifier. Valid values: ASC, DESC.
	// +kubebuilder:validation:Required
	orderBy?: null | string @go(OrderBy,*string)
}

#ColumnObservation: {
	// The name of the column.
	name?: null | string @go(Name,*string)

	// The encryption option specified for the table. Valid values: AWS_OWNED_KMS_KEY, CUSTOMER_MANAGED_KMS_KEY. The default value is AWS_OWNED_KMS_KEY.
	type?: null | string @go(Type,*string)
}

#ColumnParameters: {
	// The name of the column.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The encryption option specified for the table. Valid values: AWS_OWNED_KMS_KEY, CUSTOMER_MANAGED_KMS_KEY. The default value is AWS_OWNED_KMS_KEY.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#CommentObservation: {
	// A description of the table.
	message?: null | string @go(Message,*string)
}

#CommentParameters: {
	// A description of the table.
	// +kubebuilder:validation:Optional
	message?: null | string @go(Message,*string)
}

#EncryptionSpecificationObservation: {
	// The Amazon Resource Name (ARN) of the customer managed KMS key.
	kmsKeyIdentifier?: null | string @go(KMSKeyIdentifier,*string)

	// The encryption option specified for the table. Valid values: AWS_OWNED_KMS_KEY, CUSTOMER_MANAGED_KMS_KEY. The default value is AWS_OWNED_KMS_KEY.
	type?: null | string @go(Type,*string)
}

#EncryptionSpecificationParameters: {
	// The Amazon Resource Name (ARN) of the customer managed KMS key.
	// +kubebuilder:validation:Optional
	kmsKeyIdentifier?: null | string @go(KMSKeyIdentifier,*string)

	// The encryption option specified for the table. Valid values: AWS_OWNED_KMS_KEY, CUSTOMER_MANAGED_KMS_KEY. The default value is AWS_OWNED_KMS_KEY.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#PartitionKeyObservation: {
	// The name of the column.
	name?: null | string @go(Name,*string)
}

#PartitionKeyParameters: {
	// The name of the column.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)
}

#PointInTimeRecoveryObservation: {
	// Valid values: ENABLED, DISABLED. The default value is DISABLED.
	status?: null | string @go(Status,*string)
}

#PointInTimeRecoveryParameters: {
	// Valid values: ENABLED, DISABLED. The default value is DISABLED.
	// +kubebuilder:validation:Optional
	status?: null | string @go(Status,*string)
}

#SchemaDefinitionObservation: {
	// The columns that are part of the clustering key of the table.
	clusteringKey?: [...#ClusteringKeyObservation] @go(ClusteringKey,[]ClusteringKeyObservation)

	// The regular columns of the table.
	column?: [...#ColumnObservation] @go(Column,[]ColumnObservation)

	// The columns that are part of the partition key of the table .
	partitionKey?: [...#PartitionKeyObservation] @go(PartitionKey,[]PartitionKeyObservation)

	// The columns that have been defined as STATIC. Static columns store values that are shared by all rows in the same partition.
	staticColumn?: [...#StaticColumnObservation] @go(StaticColumn,[]StaticColumnObservation)
}

#SchemaDefinitionParameters: {
	// The columns that are part of the clustering key of the table.
	// +kubebuilder:validation:Optional
	clusteringKey?: [...#ClusteringKeyParameters] @go(ClusteringKey,[]ClusteringKeyParameters)

	// The regular columns of the table.
	// +kubebuilder:validation:Required
	column: [...#ColumnParameters] @go(Column,[]ColumnParameters)

	// The columns that are part of the partition key of the table .
	// +kubebuilder:validation:Required
	partitionKey: [...#PartitionKeyParameters] @go(PartitionKey,[]PartitionKeyParameters)

	// The columns that have been defined as STATIC. Static columns store values that are shared by all rows in the same partition.
	// +kubebuilder:validation:Optional
	staticColumn?: [...#StaticColumnParameters] @go(StaticColumn,[]StaticColumnParameters)
}

#StaticColumnObservation: {
	// The name of the column.
	name?: null | string @go(Name,*string)
}

#StaticColumnParameters: {
	// The name of the column.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)
}

#TTLObservation: {
	// Valid values: ENABLED, DISABLED. The default value is DISABLED.
	status?: null | string @go(Status,*string)
}

#TTLParameters: {
	// Valid values: ENABLED, DISABLED. The default value is DISABLED.
	// +kubebuilder:validation:Required
	status?: null | string @go(Status,*string)
}

#TableObservation: {
	// The ARN of the table.
	arn?: null | string @go(Arn,*string)

	// Specifies the read/write throughput capacity mode for the table.
	capacitySpecification?: [...#CapacitySpecificationObservation] @go(CapacitySpecification,[]CapacitySpecificationObservation)

	// A description of the table.
	comment?: [...#CommentObservation] @go(Comment,[]CommentObservation)

	// The default Time to Live setting in seconds for the table. More information can be found in the Developer Guide.
	defaultTimeToLive?: null | float64 @go(DefaultTimeToLive,*float64)

	// Specifies how the encryption key for encryption at rest is managed for the table. More information can be found in the Developer Guide.
	encryptionSpecification?: [...#EncryptionSpecificationObservation] @go(EncryptionSpecification,[]EncryptionSpecificationObservation)
	id?: null | string @go(ID,*string)

	// The name of the keyspace that the table is going to be created in.
	keyspaceName?: null | string @go(KeyspaceName,*string)

	// Specifies if point-in-time recovery is enabled or disabled for the table. More information can be found in the Developer Guide.
	pointInTimeRecovery?: [...#PointInTimeRecoveryObservation] @go(PointInTimeRecovery,[]PointInTimeRecoveryObservation)

	// Describes the schema of the table.
	schemaDefinition?: [...#SchemaDefinitionObservation] @go(SchemaDefinition,[]SchemaDefinitionObservation)

	// Enables Time to Live custom settings for the table. More information can be found in the Developer Guide.
	ttl?: [...#TTLObservation] @go(TTL,[]TTLObservation)

	// The name of the table.
	tableName?: null | string @go(TableName,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#TableParameters: {
	// Specifies the read/write throughput capacity mode for the table.
	// +kubebuilder:validation:Optional
	capacitySpecification?: [...#CapacitySpecificationParameters] @go(CapacitySpecification,[]CapacitySpecificationParameters)

	// A description of the table.
	// +kubebuilder:validation:Optional
	comment?: [...#CommentParameters] @go(Comment,[]CommentParameters)

	// The default Time to Live setting in seconds for the table. More information can be found in the Developer Guide.
	// +kubebuilder:validation:Optional
	defaultTimeToLive?: null | float64 @go(DefaultTimeToLive,*float64)

	// Specifies how the encryption key for encryption at rest is managed for the table. More information can be found in the Developer Guide.
	// +kubebuilder:validation:Optional
	encryptionSpecification?: [...#EncryptionSpecificationParameters] @go(EncryptionSpecification,[]EncryptionSpecificationParameters)

	// The name of the keyspace that the table is going to be created in.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/keyspaces/v1beta1.Keyspace
	// +kubebuilder:validation:Optional
	keyspaceName?: null | string @go(KeyspaceName,*string)

	// Specifies if point-in-time recovery is enabled or disabled for the table. More information can be found in the Developer Guide.
	// +kubebuilder:validation:Optional
	pointInTimeRecovery?: [...#PointInTimeRecoveryParameters] @go(PointInTimeRecovery,[]PointInTimeRecoveryParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Describes the schema of the table.
	// +kubebuilder:validation:Optional
	schemaDefinition?: [...#SchemaDefinitionParameters] @go(SchemaDefinition,[]SchemaDefinitionParameters)

	// Enables Time to Live custom settings for the table. More information can be found in the Developer Guide.
	// +kubebuilder:validation:Optional
	ttl?: [...#TTLParameters] @go(TTL,[]TTLParameters)

	// The name of the table.
	// +kubebuilder:validation:Optional
	tableName?: null | string @go(TableName,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// TableSpec defines the desired state of Table
#TableSpec: {
	forProvider: #TableParameters @go(ForProvider)
}

// TableStatus defines the observed state of Table.
#TableStatus: {
	atProvider?: #TableObservation @go(AtProvider)
}

// Table is the Schema for the Tables API. Provides a Keyspaces Table.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Table: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.schemaDefinition)",message="schemaDefinition is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.tableName)",message="tableName is a required parameter"
	spec:    #TableSpec   @go(Spec)
	status?: #TableStatus @go(Status)
}

// TableList contains a list of Tables
#TableList: {
	items: [...#Table] @go(Items,[]Table)
}
