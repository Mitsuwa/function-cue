// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/kafka/v1beta1

package v1beta1

#BrokerLogsObservation: {
}

#BrokerLogsParameters: {
	// +kubebuilder:validation:Optional
	cloudwatchLogs?: [...#CloudwatchLogsParameters] @go(CloudwatchLogs,[]CloudwatchLogsParameters)

	// +kubebuilder:validation:Optional
	firehose?: [...#FirehoseParameters] @go(Firehose,[]FirehoseParameters)

	// +kubebuilder:validation:Optional
	s3?: [...#S3Parameters] @go(S3,[]S3Parameters)
}

#BrokerNodeGroupInfoObservation: {
}

#BrokerNodeGroupInfoParameters: {
	// The distribution of broker nodes across availability zones (documentation). Currently the only valid value is DEFAULT.
	// +kubebuilder:validation:Optional
	azDistribution?: null | string @go(AzDistribution,*string)

	// A list of subnets to connect to in client VPC (documentation).
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.Subnet
	// +kubebuilder:validation:Optional
	clientSubnets?: [...null | string] @go(ClientSubnets,[]*string)

	// Information about the cluster access configuration. See below. For security reasons, you can't turn on public access while creating an MSK cluster. However, you can update an existing cluster to make it publicly accessible. You can also create a new cluster and then update it to make it publicly accessible (documentation).
	// +kubebuilder:validation:Optional
	connectivityInfo?: [...#ConnectivityInfoParameters] @go(ConnectivityInfo,[]ConnectivityInfoParameters)

	// The size in GiB of the EBS volume for the data drive on each broker node.
	// +kubebuilder:validation:Optional
	ebsVolumeSize?: null | float64 @go(EBSVolumeSize,*float64)

	// Specify the instance type to use for the kafka brokersE.g., kafka.m5.large. (Pricing info)
	// +kubebuilder:validation:Required
	instanceType?: null | string @go(InstanceType,*string)

	// A list of the security groups to associate with the elastic network interfaces to control who can communicate with the cluster.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.SecurityGroup
	// +kubebuilder:validation:Optional
	securityGroups?: [...null | string] @go(SecurityGroups,[]*string)

	// A block that contains information about storage volumes attached to MSK broker nodes. See below.
	// +kubebuilder:validation:Optional
	storageInfo?: [...#StorageInfoParameters] @go(StorageInfo,[]StorageInfoParameters)
}

#ClientAuthenticationObservation: {
}

#ClientAuthenticationParameters: {
	// Configuration block for specifying SASL client authentication. See below.
	// +kubebuilder:validation:Optional
	sasl?: [...#SaslParameters] @go(Sasl,[]SaslParameters)

	// Configuration block for specifying TLS client authentication. See below.
	// +kubebuilder:validation:Optional
	tls?: [...#TLSParameters] @go(TLS,[]TLSParameters)

	// Enables unauthenticated access.
	// +kubebuilder:validation:Optional
	unauthenticated?: null | bool @go(Unauthenticated,*bool)
}

#CloudwatchLogsObservation: {
}

#CloudwatchLogsParameters: {
	// Controls whether provisioned throughput is enabled or not. Default value: false.
	// +kubebuilder:validation:Required
	enabled?: null | bool @go(Enabled,*bool)

	// Name of the Cloudwatch Log Group to deliver logs to.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/cloudwatchlogs/v1beta1.Group
	// +kubebuilder:validation:Optional
	logGroup?: null | string @go(LogGroup,*string)
}

#ClusterObservation: {
	// Amazon Resource Name (ARN) of the MSK Configuration to use in the cluster.
	arn?: null | string @go(Arn,*string)

	// Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster. Contains a value if encryption_info.0.encryption_in_transit.0.client_broker is set to PLAINTEXT or TLS_PLAINTEXT. The resource sorts values alphabetically. AWS may not always return all endpoints so this value is not guaranteed to be stable across applies.
	bootstrapBrokers?: null | string @go(BootstrapBrokers,*string)

	// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.iam is set to true and broker_node_group_info.0.connectivity_info.0.public_access.0.type is set to SERVICE_PROVIDED_EIPS and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
	bootstrapBrokersPublicSaslIam?: null | string @go(BootstrapBrokersPublicSaslIAM,*string)

	// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.scram is set to true and broker_node_group_info.0.connectivity_info.0.public_access.0.type is set to SERVICE_PROVIDED_EIPS and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
	bootstrapBrokersPublicSaslScram?: null | string @go(BootstrapBrokersPublicSaslScram,*string)

	// One or more DNS names (or IP addresses) and TLS port pairs. For example, b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and broker_node_group_info.0.connectivity_info.0.public_access.0.type is set to SERVICE_PROVIDED_EIPS and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
	bootstrapBrokersPublicTls?: null | string @go(BootstrapBrokersPublicTLS,*string)

	// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.iam is set to true. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
	bootstrapBrokersSaslIam?: null | string @go(BootstrapBrokersSaslIAM,*string)

	// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.scram is set to true. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
	bootstrapBrokersSaslScram?: null | string @go(BootstrapBrokersSaslScram,*string)

	// One or more DNS names (or IP addresses) and TLS port pairs. For example, b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
	bootstrapBrokersTls?: null | string @go(BootstrapBrokersTLS,*string)

	// Current version of the MSK Cluster used for updates, e.g., K13V1IB3VIYZZH
	currentVersion?: null | string @go(CurrentVersion,*string)
	id?:             null | string @go(ID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
	zookeeperConnectString?: null | string @go(ZookeeperConnectString,*string)

	// A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster via TLS. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
	zookeeperConnectStringTls?: null | string @go(ZookeeperConnectStringTLS,*string)
}

#ClusterParameters: {
	// Configuration block for the broker nodes of the Kafka cluster.
	// +kubebuilder:validation:Required
	brokerNodeGroupInfo: [...#BrokerNodeGroupInfoParameters] @go(BrokerNodeGroupInfo,[]BrokerNodeGroupInfoParameters)

	// Configuration block for specifying a client authentication. See below.
	// +kubebuilder:validation:Optional
	clientAuthentication?: [...#ClientAuthenticationParameters] @go(ClientAuthentication,[]ClientAuthenticationParameters)

	// Name of the MSK cluster.
	// +kubebuilder:validation:Required
	clusterName?: null | string @go(ClusterName,*string)

	// Configuration block for specifying a MSK Configuration to attach to Kafka brokers. See below.
	// +kubebuilder:validation:Optional
	configurationInfo?: [...#ConfigurationInfoParameters] @go(ConfigurationInfo,[]ConfigurationInfoParameters)

	// Configuration block for specifying encryption. See below.
	// +kubebuilder:validation:Optional
	encryptionInfo?: [...#EncryptionInfoParameters] @go(EncryptionInfo,[]EncryptionInfoParameters)

	// Specify the desired enhanced MSK CloudWatch monitoring level. See Monitoring Amazon MSK with Amazon CloudWatch
	// +kubebuilder:validation:Optional
	enhancedMonitoring?: null | string @go(EnhancedMonitoring,*string)

	// Specify the desired Kafka software version.
	// +kubebuilder:validation:Required
	kafkaVersion?: null | string @go(KafkaVersion,*string)

	// Configuration block for streaming broker logs to Cloudwatch/S3/Kinesis Firehose. See below.
	// +kubebuilder:validation:Optional
	loggingInfo?: [...#LoggingInfoParameters] @go(LoggingInfo,[]LoggingInfoParameters)

	// The desired total number of broker nodes in the kafka cluster.  It must be a multiple of the number of specified client subnets.
	// +kubebuilder:validation:Required
	numberOfBrokerNodes?: null | float64 @go(NumberOfBrokerNodes,*float64)

	// Configuration block for JMX and Node monitoring for the MSK cluster. See below.
	// +kubebuilder:validation:Optional
	openMonitoring?: [...#OpenMonitoringParameters] @go(OpenMonitoring,[]OpenMonitoringParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Controls storage mode for supported storage tiers. Valid values are: LOCAL or TIERED.
	// +kubebuilder:validation:Optional
	storageMode?: null | string @go(StorageMode,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ConfigurationInfoObservation: {
}

#ConfigurationInfoParameters: {
	// Amazon Resource Name (ARN) of the MSK Configuration to use in the cluster.
	// +kubebuilder:validation:Required
	arn?: null | string @go(Arn,*string)

	// Revision of the MSK Configuration to use in the cluster.
	// +kubebuilder:validation:Required
	revision?: null | float64 @go(Revision,*float64)
}

#ConnectivityInfoObservation: {
}

#ConnectivityInfoParameters: {
	// Access control settings for brokers. See below.
	// +kubebuilder:validation:Optional
	publicAccess?: [...#PublicAccessParameters] @go(PublicAccess,[]PublicAccessParameters)
}

#EBSStorageInfoObservation: {
}

#EBSStorageInfoParameters: {
	// A block that contains EBS volume provisioned throughput information. To provision storage throughput, you must choose broker type kafka.m5.4xlarge or larger. See below.
	// +kubebuilder:validation:Optional
	provisionedThroughput?: [...#ProvisionedThroughputParameters] @go(ProvisionedThroughput,[]ProvisionedThroughputParameters)

	// The size in GiB of the EBS volume for the data drive on each broker node. Minimum value of 1 and maximum value of 16384.
	// +kubebuilder:validation:Optional
	volumeSize?: null | float64 @go(VolumeSize,*float64)
}

#EncryptionInTransitObservation: {
}

#EncryptionInTransitParameters: {
	// Encryption setting for data in transit between clients and brokers. Valid values: TLS, TLS_PLAINTEXT, and PLAINTEXT. Default value is TLS.
	// +kubebuilder:validation:Optional
	clientBroker?: null | string @go(ClientBroker,*string)

	// Whether data communication among broker nodes is encrypted. Default value: true.
	// +kubebuilder:validation:Optional
	inCluster?: null | bool @go(InCluster,*bool)
}

#EncryptionInfoObservation: {
}

#EncryptionInfoParameters: {
	// The ARN of the KMS key used for encryption at rest of the broker data volumes.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/kms/v1beta1.Key
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	encryptionAtRestKmsKeyArn?: null | string @go(EncryptionAtRestKMSKeyArn,*string)

	// Configuration block to specify encryption in transit. See below.
	// +kubebuilder:validation:Optional
	encryptionInTransit?: [...#EncryptionInTransitParameters] @go(EncryptionInTransit,[]EncryptionInTransitParameters)
}

#FirehoseObservation: {
}

#FirehoseParameters: {
	// Name of the Kinesis Data Firehose delivery stream to deliver logs to.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/firehose/v1beta1.DeliveryStream
	// +kubebuilder:validation:Optional
	deliveryStream?: null | string @go(DeliveryStream,*string)

	// Controls whether provisioned throughput is enabled or not. Default value: false.
	// +kubebuilder:validation:Required
	enabled?: null | bool @go(Enabled,*bool)
}

#JmxExporterObservation: {
}

#JmxExporterParameters: {
	// Indicates whether you want to enable or disable the JMX Exporter.
	// +kubebuilder:validation:Required
	enabledInBroker?: null | bool @go(EnabledInBroker,*bool)
}

#LoggingInfoObservation: {
}

#LoggingInfoParameters: {
	// Configuration block for Broker Logs settings for logging info. See below.
	// +kubebuilder:validation:Required
	brokerLogs: [...#BrokerLogsParameters] @go(BrokerLogs,[]BrokerLogsParameters)
}

#NodeExporterObservation: {
}

#NodeExporterParameters: {
	// Indicates whether you want to enable or disable the JMX Exporter.
	// +kubebuilder:validation:Required
	enabledInBroker?: null | bool @go(EnabledInBroker,*bool)
}

#OpenMonitoringObservation: {
}

#OpenMonitoringParameters: {
	// Configuration block for Prometheus settings for open monitoring. See below.
	// +kubebuilder:validation:Required
	prometheus: [...#PrometheusParameters] @go(Prometheus,[]PrometheusParameters)
}

#PrometheusObservation: {
}

#PrometheusParameters: {
	// Configuration block for JMX Exporter. See below.
	// +kubebuilder:validation:Optional
	jmxExporter?: [...#JmxExporterParameters] @go(JmxExporter,[]JmxExporterParameters)

	// Configuration block for Node Exporter. See below.
	// +kubebuilder:validation:Optional
	nodeExporter?: [...#NodeExporterParameters] @go(NodeExporter,[]NodeExporterParameters)
}

#ProvisionedThroughputObservation: {
}

#ProvisionedThroughputParameters: {
	// Controls whether provisioned throughput is enabled or not. Default value: false.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// Throughput value of the EBS volumes for the data drive on each kafka broker node in MiB per second. The minimum value is 250. The maximum value varies between broker type. You can refer to the valid values for the maximum volume throughput at the following documentation on throughput bottlenecks
	// +kubebuilder:validation:Optional
	volumeThroughput?: null | float64 @go(VolumeThroughput,*float64)
}

#PublicAccessObservation: {
}

#PublicAccessParameters: {
	// Public access type. Valida values: DISABLED, SERVICE_PROVIDED_EIPS.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#S3Observation: {
}

#S3Parameters: {
	// Name of the S3 bucket to deliver logs to.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/s3/v1beta1.Bucket
	// +kubebuilder:validation:Optional
	bucket?: null | string @go(Bucket,*string)

	// Controls whether provisioned throughput is enabled or not. Default value: false.
	// +kubebuilder:validation:Required
	enabled?: null | bool @go(Enabled,*bool)

	// Prefix to append to the folder name.
	// +kubebuilder:validation:Optional
	prefix?: null | string @go(Prefix,*string)
}

#SaslObservation: {
}

#SaslParameters: {
	// Enables IAM client authentication. Defaults to false.
	// +kubebuilder:validation:Optional
	iam?: null | bool @go(IAM,*bool)

	// Enables SCRAM client authentication via AWS Secrets Manager. Defaults to false.
	// +kubebuilder:validation:Optional
	scram?: null | bool @go(Scram,*bool)
}

#StorageInfoObservation: {
}

#StorageInfoParameters: {
	// A block that contains EBS volume information. See below.
	// +kubebuilder:validation:Optional
	ebsStorageInfo?: [...#EBSStorageInfoParameters] @go(EBSStorageInfo,[]EBSStorageInfoParameters)
}

#TLSObservation: {
}

#TLSParameters: {
	// List of ACM Certificate Authority Amazon Resource Names (ARNs).
	// +kubebuilder:validation:Optional
	certificateAuthorityArns?: [...null | string] @go(CertificateAuthorityArns,[]*string)
}

// ClusterSpec defines the desired state of Cluster
#ClusterSpec: {
	forProvider: #ClusterParameters @go(ForProvider)
}

// ClusterStatus defines the observed state of Cluster.
#ClusterStatus: {
	atProvider?: #ClusterObservation @go(AtProvider)
}

// Cluster is the Schema for the Clusters API.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Cluster: {
	spec:    #ClusterSpec   @go(Spec)
	status?: #ClusterStatus @go(Status)
}

// ClusterList contains a list of Clusters
#ClusterList: {
	items: [...#Cluster] @go(Items,[]Cluster)
}
