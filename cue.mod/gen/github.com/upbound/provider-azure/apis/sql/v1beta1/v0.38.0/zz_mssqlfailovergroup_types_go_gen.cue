// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/sql/v1beta1

package v1beta1

#MSSQLFailoverGroupInitParameters: {
	// A partner_server block as defined below.
	partnerServer?: [...#PartnerServerInitParameters] @go(PartnerServer,[]PartnerServerInitParameters)

	// A read_write_endpoint_failover_policy block as defined below.
	readWriteEndpointFailoverPolicy?: [...#ReadWriteEndpointFailoverPolicyInitParameters] @go(ReadWriteEndpointFailoverPolicy,[]ReadWriteEndpointFailoverPolicyInitParameters)

	// Whether failover is enabled for the readonly endpoint. Defaults to false.
	readonlyEndpointFailoverPolicyEnabled?: null | bool @go(ReadonlyEndpointFailoverPolicyEnabled,*bool)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#MSSQLFailoverGroupObservation: {
	// A set of database names to include in the failover group.
	databases?: [...null | string] @go(Databases,[]*string)

	// The ID of the Failover Group.
	id?: null | string @go(ID,*string)

	// A partner_server block as defined below.
	partnerServer?: [...#PartnerServerObservation] @go(PartnerServer,[]PartnerServerObservation)

	// A read_write_endpoint_failover_policy block as defined below.
	readWriteEndpointFailoverPolicy?: [...#ReadWriteEndpointFailoverPolicyObservation] @go(ReadWriteEndpointFailoverPolicy,[]ReadWriteEndpointFailoverPolicyObservation)

	// Whether failover is enabled for the readonly endpoint. Defaults to false.
	readonlyEndpointFailoverPolicyEnabled?: null | bool @go(ReadonlyEndpointFailoverPolicyEnabled,*bool)

	// The ID of the primary SQL Server on which to create the failover group. Changing this forces a new resource to be created.
	serverId?: null | string @go(ServerID,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#MSSQLFailoverGroupParameters: {
	// A set of database names to include in the failover group.
	// +crossplane:generate:reference:type=MSSQLDatabase
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	databases?: [...null | string] @go(Databases,[]*string)

	// A partner_server block as defined below.
	// +kubebuilder:validation:Optional
	partnerServer?: [...#PartnerServerParameters] @go(PartnerServer,[]PartnerServerParameters)

	// A read_write_endpoint_failover_policy block as defined below.
	// +kubebuilder:validation:Optional
	readWriteEndpointFailoverPolicy?: [...#ReadWriteEndpointFailoverPolicyParameters] @go(ReadWriteEndpointFailoverPolicy,[]ReadWriteEndpointFailoverPolicyParameters)

	// Whether failover is enabled for the readonly endpoint. Defaults to false.
	// +kubebuilder:validation:Optional
	readonlyEndpointFailoverPolicyEnabled?: null | bool @go(ReadonlyEndpointFailoverPolicyEnabled,*bool)

	// The ID of the primary SQL Server on which to create the failover group. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=MSSQLServer
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	serverId?: null | string @go(ServerID,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#PartnerServerInitParameters: {
}

#PartnerServerObservation: {
	// The ID of a partner SQL server to include in the failover group.
	id?: null | string @go(ID,*string)

	// The location of the partner server.
	location?: null | string @go(Location,*string)

	// The replication role of the partner server. Possible values include Primary or Secondary.
	role?: null | string @go(Role,*string)
}

#PartnerServerParameters: {
	// The ID of a partner SQL server to include in the failover group.
	// +crossplane:generate:reference:type=MSSQLServer
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)
}

#ReadWriteEndpointFailoverPolicyInitParameters: {
	// The grace period in minutes, before failover with data loss is attempted for the read-write endpoint. Required when mode is Automatic.
	graceMinutes?: null | float64 @go(GraceMinutes,*float64)

	// The failover policy of the read-write endpoint for the failover group. Possible values are Automatic or Manual.
	mode?: null | string @go(Mode,*string)
}

#ReadWriteEndpointFailoverPolicyObservation: {
	// The grace period in minutes, before failover with data loss is attempted for the read-write endpoint. Required when mode is Automatic.
	graceMinutes?: null | float64 @go(GraceMinutes,*float64)

	// The failover policy of the read-write endpoint for the failover group. Possible values are Automatic or Manual.
	mode?: null | string @go(Mode,*string)
}

#ReadWriteEndpointFailoverPolicyParameters: {
	// The grace period in minutes, before failover with data loss is attempted for the read-write endpoint. Required when mode is Automatic.
	// +kubebuilder:validation:Optional
	graceMinutes?: null | float64 @go(GraceMinutes,*float64)

	// The failover policy of the read-write endpoint for the failover group. Possible values are Automatic or Manual.
	// +kubebuilder:validation:Optional
	mode?: null | string @go(Mode,*string)
}

// MSSQLFailoverGroupSpec defines the desired state of MSSQLFailoverGroup
#MSSQLFailoverGroupSpec: {
	forProvider: #MSSQLFailoverGroupParameters @go(ForProvider)

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
	initProvider?: #MSSQLFailoverGroupInitParameters @go(InitProvider)
}

// MSSQLFailoverGroupStatus defines the observed state of MSSQLFailoverGroup.
#MSSQLFailoverGroupStatus: {
	atProvider?: #MSSQLFailoverGroupObservation @go(AtProvider)
}

// MSSQLFailoverGroup is the Schema for the MSSQLFailoverGroups API. Manages a Microsoft Azure SQL Failover Group.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MSSQLFailoverGroup: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.partnerServer) || (has(self.initProvider) && has(self.initProvider.partnerServer))",message="spec.forProvider.partnerServer is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.readWriteEndpointFailoverPolicy) || (has(self.initProvider) && has(self.initProvider.readWriteEndpointFailoverPolicy))",message="spec.forProvider.readWriteEndpointFailoverPolicy is a required parameter"
	spec:    #MSSQLFailoverGroupSpec   @go(Spec)
	status?: #MSSQLFailoverGroupStatus @go(Status)
}

// MSSQLFailoverGroupList contains a list of MSSQLFailoverGroups
#MSSQLFailoverGroupList: {
	items: [...#MSSQLFailoverGroup] @go(Items,[]MSSQLFailoverGroup)
}
