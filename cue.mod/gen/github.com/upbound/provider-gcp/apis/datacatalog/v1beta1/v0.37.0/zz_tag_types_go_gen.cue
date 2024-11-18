// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/datacatalog/v1beta1

package v1beta1

#FieldsInitParameters: {
	// Holds the value for a tag field with boolean type.
	boolValue?: null | bool @go(BoolValue,*bool)

	// Holds the value for a tag field with double type.
	doubleValue?: null | float64 @go(DoubleValue,*float64)

	// Holds the value for a tag field with enum type. This value must be one of the allowed values in the definition of this enum.
	enumValue?: null | string @go(EnumValue,*string)

	// The identifier for this object. Format specified above.
	fieldName?: null | string @go(FieldName,*string)

	// Holds the value for a tag field with string type.
	stringValue?: null | string @go(StringValue,*string)

	// Holds the value for a tag field with timestamp type.
	timestampValue?: null | string @go(TimestampValue,*string)
}

#FieldsObservation: {
	// Holds the value for a tag field with boolean type.
	boolValue?: null | bool @go(BoolValue,*bool)

	// (Output)
	// The display name of this field
	displayName?: null | string @go(DisplayName,*string)

	// Holds the value for a tag field with double type.
	doubleValue?: null | float64 @go(DoubleValue,*float64)

	// Holds the value for a tag field with enum type. This value must be one of the allowed values in the definition of this enum.
	enumValue?: null | string @go(EnumValue,*string)

	// The identifier for this object. Format specified above.
	fieldName?: null | string @go(FieldName,*string)

	// (Output)
	// The order of this field with respect to other fields in this tag. For example, a higher value can indicate
	// a more important field. The value can be negative. Multiple fields can have the same order, and field orders
	// within a tag do not have to be sequential.
	order?: null | float64 @go(Order,*float64)

	// Holds the value for a tag field with string type.
	stringValue?: null | string @go(StringValue,*string)

	// Holds the value for a tag field with timestamp type.
	timestampValue?: null | string @go(TimestampValue,*string)
}

#FieldsParameters: {
	// Holds the value for a tag field with boolean type.
	// +kubebuilder:validation:Optional
	boolValue?: null | bool @go(BoolValue,*bool)

	// Holds the value for a tag field with double type.
	// +kubebuilder:validation:Optional
	doubleValue?: null | float64 @go(DoubleValue,*float64)

	// Holds the value for a tag field with enum type. This value must be one of the allowed values in the definition of this enum.
	// +kubebuilder:validation:Optional
	enumValue?: null | string @go(EnumValue,*string)

	// The identifier for this object. Format specified above.
	// +kubebuilder:validation:Optional
	fieldName?: null | string @go(FieldName,*string)

	// Holds the value for a tag field with string type.
	// +kubebuilder:validation:Optional
	stringValue?: null | string @go(StringValue,*string)

	// Holds the value for a tag field with timestamp type.
	// +kubebuilder:validation:Optional
	timestampValue?: null | string @go(TimestampValue,*string)
}

#TagInitParameters: {
	// Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an
	// individual column based on that schema.
	// For attaching a tag to a nested column, use . to separate the column names. Example:
	// outer_column.inner_column
	column?: null | string @go(Column,*string)

	// This maps the ID of a tag field to the value of and additional information about that field.
	// Valid field IDs are defined by the tag's template. A tag must have at least 1 field and at most 500 fields.
	// Structure is documented below.
	fields?: [...#FieldsInitParameters] @go(Fields,[]FieldsInitParameters)
}

#TagObservation: {
	// Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an
	// individual column based on that schema.
	// For attaching a tag to a nested column, use . to separate the column names. Example:
	// outer_column.inner_column
	column?: null | string @go(Column,*string)

	// This maps the ID of a tag field to the value of and additional information about that field.
	// Valid field IDs are defined by the tag's template. A tag must have at least 1 field and at most 500 fields.
	// Structure is documented below.
	fields?: [...#FieldsObservation] @go(Fields,[]FieldsObservation)

	// an identifier for the resource with format {{name}}
	id?: null | string @go(ID,*string)

	// The resource name of the tag in URL format. Example:
	// projects/{project_id}/locations/{location}/entrygroups/{entryGroupId}/entries/{entryId}/tags/{tag_id} or
	// projects/{project_id}/locations/{location}/entrygroups/{entryGroupId}/tags/{tag_id}
	// where tag_id is a system-generated identifier. Note that this Tag may not actually be stored in the location in this name.
	name?: null | string @go(Name,*string)

	// The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to
	// all entries in that group.
	parent?: null | string @go(Parent,*string)

	// The resource name of the tag template that this tag uses. Example:
	// projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
	// This field cannot be modified after creation.
	template?: null | string @go(Template,*string)

	// The display name of the tag template.
	templateDisplayname?: null | string @go(TemplateDisplayname,*string)
}

#TagParameters: {
	// Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an
	// individual column based on that schema.
	// For attaching a tag to a nested column, use . to separate the column names. Example:
	// outer_column.inner_column
	// +kubebuilder:validation:Optional
	column?: null | string @go(Column,*string)

	// This maps the ID of a tag field to the value of and additional information about that field.
	// Valid field IDs are defined by the tag's template. A tag must have at least 1 field and at most 500 fields.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	fields?: [...#FieldsParameters] @go(Fields,[]FieldsParameters)

	// The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to
	// all entries in that group.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/datacatalog/v1beta1.Entry
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	parent?: null | string @go(Parent,*string)

	// The resource name of the tag template that this tag uses. Example:
	// projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
	// This field cannot be modified after creation.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/datacatalog/v1beta1.TagTemplate
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	template?: null | string @go(Template,*string)
}

// TagSpec defines the desired state of Tag
#TagSpec: {
	forProvider: #TagParameters @go(ForProvider)

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
	initProvider?: #TagInitParameters @go(InitProvider)
}

// TagStatus defines the observed state of Tag.
#TagStatus: {
	atProvider?: #TagObservation @go(AtProvider)
}

// Tag is the Schema for the Tags API. Tags are used to attach custom metadata to Data Catalog resources.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Tag: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.fields) || (has(self.initProvider) && has(self.initProvider.fields))",message="spec.forProvider.fields is a required parameter"
	spec:    #TagSpec   @go(Spec)
	status?: #TagStatus @go(Status)
}

// TagList contains a list of Tags
#TagList: {
	items: [...#Tag] @go(Items,[]Tag)
}
