// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/logging/v1beta1

package v1beta1

#BigqueryOptionsInitParameters: {
	// Whether to use BigQuery's partition tables.
	// By default, Logging creates dated tables based on the log entries' timestamps, e.g. syslog_20170523. With partitioned
	// tables the date suffix is no longer present and special query syntax
	// has to be used instead. In both cases, tables are sharded based on UTC timezone.
	usePartitionedTables?: null | bool @go(UsePartitionedTables,*bool)
}

#BigqueryOptionsObservation: {
	// Whether to use BigQuery's partition tables.
	// By default, Logging creates dated tables based on the log entries' timestamps, e.g. syslog_20170523. With partitioned
	// tables the date suffix is no longer present and special query syntax
	// has to be used instead. In both cases, tables are sharded based on UTC timezone.
	usePartitionedTables?: null | bool @go(UsePartitionedTables,*bool)
}

#BigqueryOptionsParameters: {
	// Whether to use BigQuery's partition tables.
	// By default, Logging creates dated tables based on the log entries' timestamps, e.g. syslog_20170523. With partitioned
	// tables the date suffix is no longer present and special query syntax
	// has to be used instead. In both cases, tables are sharded based on UTC timezone.
	// +kubebuilder:validation:Optional
	usePartitionedTables?: null | bool @go(UsePartitionedTables,*bool)
}

#ExclusionsInitParameters: {
	// A description of this exclusion.
	description?: null | string @go(Description,*string)

	// If set to True, then this exclusion is disabled and it does not exclude any log entries.
	disabled?: null | bool @go(Disabled,*bool)

	// An advanced logs filter that matches the log entries to be excluded. By using the sample function, you can exclude less than 100% of the matching log entries. See Advanced Log Filters for information on how to
	// write a filter.
	filter?: null | string @go(Filter,*string)

	// A client-assigned identifier, such as load-balancer-exclusion. Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
	name?: null | string @go(Name,*string)
}

#ExclusionsObservation: {
	// A description of this exclusion.
	description?: null | string @go(Description,*string)

	// If set to True, then this exclusion is disabled and it does not exclude any log entries.
	disabled?: null | bool @go(Disabled,*bool)

	// An advanced logs filter that matches the log entries to be excluded. By using the sample function, you can exclude less than 100% of the matching log entries. See Advanced Log Filters for information on how to
	// write a filter.
	filter?: null | string @go(Filter,*string)

	// A client-assigned identifier, such as load-balancer-exclusion. Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
	name?: null | string @go(Name,*string)
}

#ExclusionsParameters: {
	// A description of this exclusion.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// If set to True, then this exclusion is disabled and it does not exclude any log entries.
	// +kubebuilder:validation:Optional
	disabled?: null | bool @go(Disabled,*bool)

	// An advanced logs filter that matches the log entries to be excluded. By using the sample function, you can exclude less than 100% of the matching log entries. See Advanced Log Filters for information on how to
	// write a filter.
	// +kubebuilder:validation:Optional
	filter?: null | string @go(Filter,*string)

	// A client-assigned identifier, such as load-balancer-exclusion. Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)
}

#ProjectSinkInitParameters: {
	// Options that affect sinks exporting data to BigQuery. Structure documented below.
	bigqueryOptions?: [...#BigqueryOptionsInitParameters] @go(BigqueryOptions,[]BigqueryOptionsInitParameters)

	// A description of this sink. The maximum length of the description is 8000 characters.
	description?: null | string @go(Description,*string)

	// The destination of the sink (or, in other words, where logs are written to). Can be a
	// Cloud Storage bucket, a PubSub topic, a BigQuery dataset or a Cloud Logging bucket . Examples:
	destination?: null | string @go(Destination,*string)

	// If set to True, then this sink is disabled and it does not export any log entries.
	disabled?: null | bool @go(Disabled,*bool)

	// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both filter and one of exclusions.filter, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
	exclusions?: [...#ExclusionsInitParameters] @go(Exclusions,[]ExclusionsInitParameters)

	// The filter to apply when exporting logs. Only log entries that match the filter are exported.
	// See Advanced Log Filters for information on how to
	// write a filter.
	filter?: null | string @go(Filter,*string)

	// The ID of the project to create the sink in. If omitted, the project associated with the provider is
	// used.
	project?: null | string @go(Project,*string)

	// Whether or not to create a unique identity associated with this sink. If false
	// (the default), then the writer_identity used is serviceAccount:cloud-logs@system.gserviceaccount.com. If true,
	// then a unique service account is created and used for this sink. If you wish to publish logs across projects or utilize
	// bigquery_options, you must set unique_writer_identity to true.
	uniqueWriterIdentity?: null | bool @go(UniqueWriterIdentity,*bool)
}

#ProjectSinkObservation: {
	// Options that affect sinks exporting data to BigQuery. Structure documented below.
	bigqueryOptions?: [...#BigqueryOptionsObservation] @go(BigqueryOptions,[]BigqueryOptionsObservation)

	// A description of this sink. The maximum length of the description is 8000 characters.
	description?: null | string @go(Description,*string)

	// The destination of the sink (or, in other words, where logs are written to). Can be a
	// Cloud Storage bucket, a PubSub topic, a BigQuery dataset or a Cloud Logging bucket . Examples:
	destination?: null | string @go(Destination,*string)

	// If set to True, then this sink is disabled and it does not export any log entries.
	disabled?: null | bool @go(Disabled,*bool)

	// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both filter and one of exclusions.filter, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
	exclusions?: [...#ExclusionsObservation] @go(Exclusions,[]ExclusionsObservation)

	// The filter to apply when exporting logs. Only log entries that match the filter are exported.
	// See Advanced Log Filters for information on how to
	// write a filter.
	filter?: null | string @go(Filter,*string)

	// an identifier for the resource with format projects/{{project}}/sinks/{{name}}
	id?: null | string @go(ID,*string)

	// The ID of the project to create the sink in. If omitted, the project associated with the provider is
	// used.
	project?: null | string @go(Project,*string)

	// Whether or not to create a unique identity associated with this sink. If false
	// (the default), then the writer_identity used is serviceAccount:cloud-logs@system.gserviceaccount.com. If true,
	// then a unique service account is created and used for this sink. If you wish to publish logs across projects or utilize
	// bigquery_options, you must set unique_writer_identity to true.
	uniqueWriterIdentity?: null | bool @go(UniqueWriterIdentity,*bool)

	// The identity associated with this sink. This identity must be granted write access to the
	// configured destination.
	writerIdentity?: null | string @go(WriterIdentity,*string)
}

#ProjectSinkParameters: {
	// Options that affect sinks exporting data to BigQuery. Structure documented below.
	// +kubebuilder:validation:Optional
	bigqueryOptions?: [...#BigqueryOptionsParameters] @go(BigqueryOptions,[]BigqueryOptionsParameters)

	// A description of this sink. The maximum length of the description is 8000 characters.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The destination of the sink (or, in other words, where logs are written to). Can be a
	// Cloud Storage bucket, a PubSub topic, a BigQuery dataset or a Cloud Logging bucket . Examples:
	// +kubebuilder:validation:Optional
	destination?: null | string @go(Destination,*string)

	// If set to True, then this sink is disabled and it does not export any log entries.
	// +kubebuilder:validation:Optional
	disabled?: null | bool @go(Disabled,*bool)

	// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both filter and one of exclusions.filter, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
	// +kubebuilder:validation:Optional
	exclusions?: [...#ExclusionsParameters] @go(Exclusions,[]ExclusionsParameters)

	// The filter to apply when exporting logs. Only log entries that match the filter are exported.
	// See Advanced Log Filters for information on how to
	// write a filter.
	// +kubebuilder:validation:Optional
	filter?: null | string @go(Filter,*string)

	// The ID of the project to create the sink in. If omitted, the project associated with the provider is
	// used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// Whether or not to create a unique identity associated with this sink. If false
	// (the default), then the writer_identity used is serviceAccount:cloud-logs@system.gserviceaccount.com. If true,
	// then a unique service account is created and used for this sink. If you wish to publish logs across projects or utilize
	// bigquery_options, you must set unique_writer_identity to true.
	// +kubebuilder:validation:Optional
	uniqueWriterIdentity?: null | bool @go(UniqueWriterIdentity,*bool)
}

// ProjectSinkSpec defines the desired state of ProjectSink
#ProjectSinkSpec: {
	forProvider: #ProjectSinkParameters @go(ForProvider)

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
	initProvider?: #ProjectSinkInitParameters @go(InitProvider)
}

// ProjectSinkStatus defines the observed state of ProjectSink.
#ProjectSinkStatus: {
	atProvider?: #ProjectSinkObservation @go(AtProvider)
}

// ProjectSink is the Schema for the ProjectSinks API. Manages a project-level logging sink.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#ProjectSink: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.destination) || (has(self.initProvider) && has(self.initProvider.destination))",message="spec.forProvider.destination is a required parameter"
	spec:    #ProjectSinkSpec   @go(Spec)
	status?: #ProjectSinkStatus @go(Status)
}

// ProjectSinkList contains a list of ProjectSinks
#ProjectSinkList: {
	items: [...#ProjectSink] @go(Items,[]ProjectSink)
}
