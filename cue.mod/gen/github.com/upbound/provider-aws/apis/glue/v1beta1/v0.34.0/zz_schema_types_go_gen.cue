// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/glue/v1beta1

package v1beta1

#SchemaObservation: {
	// Amazon Resource Name (ARN) of the schema.
	arn?: null | string @go(Arn,*string)

	// The compatibility mode of the schema. Values values are: NONE, DISABLED, BACKWARD, BACKWARD_ALL, FORWARD, FORWARD_ALL, FULL, and FULL_ALL.
	compatibility?: null | string @go(Compatibility,*string)

	// The data format of the schema definition. Valid values are AVRO, JSON and PROTOBUF.
	dataFormat?: null | string @go(DataFormat,*string)

	// –  A description of the schema.
	description?: null | string @go(Description,*string)

	// Amazon Resource Name (ARN) of the schema.
	id?: null | string @go(ID,*string)

	// The latest version of the schema associated with the returned schema definition.
	latestSchemaVersion?: null | float64 @go(LatestSchemaVersion,*float64)

	// The next version of the schema associated with the returned schema definition.
	nextSchemaVersion?: null | float64 @go(NextSchemaVersion,*float64)

	// The ARN of the Glue Registry to create the schema in.
	registryArn?: null | string @go(RegistryArn,*string)

	// The name of the Glue Registry.
	registryName?: null | string @go(RegistryName,*string)

	// The version number of the checkpoint (the last time the compatibility mode was changed).
	schemaCheckpoint?: null | float64 @go(SchemaCheckpoint,*float64)

	// The schema definition using the data_format setting for schema_name.
	schemaDefinition?: null | string @go(SchemaDefinition,*string)

	// –  The Name of the schema.
	schemaName?: null | string @go(SchemaName,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#SchemaParameters: {
	// The compatibility mode of the schema. Values values are: NONE, DISABLED, BACKWARD, BACKWARD_ALL, FORWARD, FORWARD_ALL, FULL, and FULL_ALL.
	// +kubebuilder:validation:Optional
	compatibility?: null | string @go(Compatibility,*string)

	// The data format of the schema definition. Valid values are AVRO, JSON and PROTOBUF.
	// +kubebuilder:validation:Optional
	dataFormat?: null | string @go(DataFormat,*string)

	// –  A description of the schema.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The ARN of the Glue Registry to create the schema in.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/glue/v1beta1.Registry
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	registryArn?: null | string @go(RegistryArn,*string)

	// The schema definition using the data_format setting for schema_name.
	// +kubebuilder:validation:Optional
	schemaDefinition?: null | string @go(SchemaDefinition,*string)

	// –  The Name of the schema.
	// +kubebuilder:validation:Optional
	schemaName?: null | string @go(SchemaName,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// SchemaSpec defines the desired state of Schema
#SchemaSpec: {
	forProvider: #SchemaParameters @go(ForProvider)
}

// SchemaStatus defines the observed state of Schema.
#SchemaStatus: {
	atProvider?: #SchemaObservation @go(AtProvider)
}

// Schema is the Schema for the Schemas API. Provides a Glue Schema resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Schema: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.compatibility)",message="compatibility is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.dataFormat)",message="dataFormat is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.schemaDefinition)",message="schemaDefinition is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.schemaName)",message="schemaName is a required parameter"
	spec:    #SchemaSpec   @go(Spec)
	status?: #SchemaStatus @go(Status)
}

// SchemaList contains a list of Schemas
#SchemaList: {
	items: [...#Schema] @go(Items,[]Schema)
}
