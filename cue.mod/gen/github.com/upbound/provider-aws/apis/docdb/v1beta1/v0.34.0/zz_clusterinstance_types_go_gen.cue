// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/docdb/v1beta1

package v1beta1

#ClusterInstanceObservation: {
	// Specifies whether any database modifications
	// are applied immediately, or during the next maintenance window. Default isfalse.
	applyImmediately?: null | bool @go(ApplyImmediately,*bool)

	// Amazon Resource Name (ARN) of cluster instance
	arn?: null | string @go(Arn,*string)

	// This parameter does not apply to Amazon DocumentDB. Amazon DocumentDB does not perform minor version upgrades regardless of the value set (see docs). Default true.
	autoMinorVersionUpgrade?: null | bool @go(AutoMinorVersionUpgrade,*bool)

	// The EC2 Availability Zone that the DB instance is created in. See docs about the details.
	availabilityZone?: null | string @go(AvailabilityZone,*string)

	// The identifier of the CA certificate for the DB instance.
	caCertIdentifier?: null | string @go(CACertIdentifier,*string)

	// The identifier of the aws_docdb_cluster in which to launch this instance.
	clusterIdentifier?: null | string @go(ClusterIdentifier,*string)

	// The DB subnet group to associate with this DB instance.
	dbSubnetGroupName?: null | string @go(DBSubnetGroupName,*string)

	// The region-unique, immutable identifier for the DB instance.
	dbiResourceId?: null | string @go(DbiResourceID,*string)

	// A value that indicates whether to enable Performance Insights for the DB Instance. Default false. See [docs] (https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html) about the details.
	enablePerformanceInsights?: null | bool @go(EnablePerformanceInsights,*bool)

	// The DNS address for this instance. May not be writable
	endpoint?: null | string @go(Endpoint,*string)

	// The name of the database engine to be used for the DocDB instance. Defaults to docdb. Valid Values: docdb.
	engine?: null | string @go(Engine,*string)

	// The database engine version
	engineVersion?: null | string @go(EngineVersion,*string)
	id?:            null | string @go(ID,*string)

	// The instance class to use. For details on CPU and memory, see Scaling for DocDB Instances. DocDB currently
	// supports the below instance classes. Please see AWS Documentation for complete details.
	instanceClass?: null | string @go(InstanceClass,*string)

	// The ARN for the KMS encryption key if one is set to the cluster.
	kmsKeyId?: null | string @go(KMSKeyID,*string)

	// The KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. If you do not specify a value for PerformanceInsightsKMSKeyId, then Amazon DocumentDB uses your default KMS key.
	performanceInsightsKmsKeyId?: null | string @go(PerformanceInsightsKMSKeyID,*string)

	// The database port
	port?: null | float64 @go(Port,*float64)

	// The daily time range during which automated backups are created if automated backups are enabled.
	preferredBackupWindow?: null | string @go(PreferredBackupWindow,*string)

	// The window to perform maintenance in.
	// Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
	preferredMaintenanceWindow?: null | string @go(PreferredMaintenanceWindow,*string)

	// Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer.
	promotionTier?:      null | float64 @go(PromotionTier,*float64)
	publiclyAccessible?: null | bool    @go(PubliclyAccessible,*bool)

	// Specifies whether the DB cluster is encrypted.
	storageEncrypted?: null | bool @go(StorageEncrypted,*bool)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// – Boolean indicating if this instance is writable. False indicates this instance is a read replica.
	writer?: null | bool @go(Writer,*bool)
}

#ClusterInstanceParameters: {
	// Specifies whether any database modifications
	// are applied immediately, or during the next maintenance window. Default isfalse.
	// +kubebuilder:validation:Optional
	applyImmediately?: null | bool @go(ApplyImmediately,*bool)

	// This parameter does not apply to Amazon DocumentDB. Amazon DocumentDB does not perform minor version upgrades regardless of the value set (see docs). Default true.
	// +kubebuilder:validation:Optional
	autoMinorVersionUpgrade?: null | bool @go(AutoMinorVersionUpgrade,*bool)

	// The EC2 Availability Zone that the DB instance is created in. See docs about the details.
	// +kubebuilder:validation:Optional
	availabilityZone?: null | string @go(AvailabilityZone,*string)

	// The identifier of the CA certificate for the DB instance.
	// +kubebuilder:validation:Optional
	caCertIdentifier?: null | string @go(CACertIdentifier,*string)

	// The identifier of the aws_docdb_cluster in which to launch this instance.
	// +crossplane:generate:reference:type=Cluster
	// +kubebuilder:validation:Optional
	clusterIdentifier?: null | string @go(ClusterIdentifier,*string)

	// A value that indicates whether to enable Performance Insights for the DB Instance. Default false. See [docs] (https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html) about the details.
	// +kubebuilder:validation:Optional
	enablePerformanceInsights?: null | bool @go(EnablePerformanceInsights,*bool)

	// The name of the database engine to be used for the DocDB instance. Defaults to docdb. Valid Values: docdb.
	// +kubebuilder:validation:Optional
	engine?: null | string @go(Engine,*string)

	// The instance class to use. For details on CPU and memory, see Scaling for DocDB Instances. DocDB currently
	// supports the below instance classes. Please see AWS Documentation for complete details.
	// +kubebuilder:validation:Optional
	instanceClass?: null | string @go(InstanceClass,*string)

	// The KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. If you do not specify a value for PerformanceInsightsKMSKeyId, then Amazon DocumentDB uses your default KMS key.
	// +kubebuilder:validation:Optional
	performanceInsightsKmsKeyId?: null | string @go(PerformanceInsightsKMSKeyID,*string)

	// The window to perform maintenance in.
	// Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
	// +kubebuilder:validation:Optional
	preferredMaintenanceWindow?: null | string @go(PreferredMaintenanceWindow,*string)

	// Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer.
	// +kubebuilder:validation:Optional
	promotionTier?: null | float64 @go(PromotionTier,*float64)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// ClusterInstanceSpec defines the desired state of ClusterInstance
#ClusterInstanceSpec: {
	forProvider: #ClusterInstanceParameters @go(ForProvider)
}

// ClusterInstanceStatus defines the observed state of ClusterInstance.
#ClusterInstanceStatus: {
	atProvider?: #ClusterInstanceObservation @go(AtProvider)
}

// ClusterInstance is the Schema for the ClusterInstances API. Provides an DocDB Cluster Resource Instance
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ClusterInstance: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.instanceClass)",message="instanceClass is a required parameter"
	spec:    #ClusterInstanceSpec   @go(Spec)
	status?: #ClusterInstanceStatus @go(Status)
}

// ClusterInstanceList contains a list of ClusterInstances
#ClusterInstanceList: {
	items: [...#ClusterInstance] @go(Items,[]ClusterInstance)
}
