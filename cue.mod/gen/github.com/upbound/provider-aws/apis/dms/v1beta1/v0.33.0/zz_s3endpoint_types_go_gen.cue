// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/dms/v1beta1

package v1beta1

#S3EndpointObservation: {
	// ARN for the endpoint.
	endpointArn?: null | string @go(EndpointArn,*string)

	// Expanded name for the engine name.
	engineDisplayName?: null | string @go(EngineDisplayName,*string)

	// Can be used for cross-account validation. Use it in another account with aws_dms_s3_endpoint to create the endpoint cross-account.
	externalId?: null | string @go(ExternalID,*string)
	id?:         null | string @go(ID,*string)

	// Status of the endpoint.
	status?: null | string @go(Status,*string)

	// Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#S3EndpointParameters: {
	// Whether to add column name information to the .csv output file. Default is false.
	// +kubebuilder:validation:Optional
	addColumnName?: null | bool @go(AddColumnName,*bool)

	// Whether to add padding. Default is false. (Ignored for source endpoints.)
	// +kubebuilder:validation:Optional
	addTrailingPaddingCharacter?: null | bool @go(AddTrailingPaddingCharacter,*bool)

	// S3 object prefix.
	// +kubebuilder:validation:Optional
	bucketFolder?: null | string @go(BucketFolder,*string)

	// S3 bucket name.
	// +kubebuilder:validation:Required
	bucketName?: null | string @go(BucketName,*string)

	// Predefined (canned) access control list for objects created in an S3 bucket. Valid values include NONE, PRIVATE, PUBLIC_READ, PUBLIC_READ_WRITE, AUTHENTICATED_READ, AWS_EXEC_READ, BUCKET_OWNER_READ, and BUCKET_OWNER_FULL_CONTROL. (AWS default is NONE.)
	// +kubebuilder:validation:Optional
	cannedAclForObjects?: null | string @go(CannedACLForObjects,*string)

	// Whether to write insert and update operations to .csv or .parquet output files. Default is false.
	// +kubebuilder:validation:Optional
	cdcInsertsAndUpdates?: null | bool @go(CdcInsertsAndUpdates,*bool)

	// Whether to write insert operations to .csv or .parquet output files. Default is false.
	// +kubebuilder:validation:Optional
	cdcInsertsOnly?: null | bool @go(CdcInsertsOnly,*bool)

	// Maximum length of the interval, defined in seconds, after which to output a file to Amazon S3. (AWS default is 60.)
	// +kubebuilder:validation:Optional
	cdcMaxBatchInterval?: null | float64 @go(CdcMaxBatchInterval,*float64)

	// Minimum file size condition as defined in kilobytes to output a file to Amazon S3. (AWS default is 32000 KB.)
	// +kubebuilder:validation:Optional
	cdcMinFileSize?: null | float64 @go(CdcMinFileSize,*float64)

	// Folder path of CDC files. If cdc_path is set, AWS DMS reads CDC files from this path and replicates the data changes to the target endpoint. Supported in AWS DMS versions 3.4.2 and later.
	// +kubebuilder:validation:Optional
	cdcPath?: null | string @go(CdcPath,*string)

	// ARN for the certificate.
	// +kubebuilder:validation:Optional
	certificateArn?: null | string @go(CertificateArn,*string)

	// Set to compress target files. Valid values are GZIP and NONE. Default is NONE. (Ignored for source endpoints.)
	// +kubebuilder:validation:Optional
	compressionType?: null | string @go(CompressionType,*string)

	// Delimiter used to separate columns in the source files. Default is ,.
	// +kubebuilder:validation:Optional
	csvDelimiter?: null | string @go(CsvDelimiter,*string)

	// Only applies if output files for a CDC load are written in .csv format. If use_csv_no_sup_value is set to true, string to use for all columns not included in the supplemental log. If you do not specify a string value, DMS uses the null value for these columns regardless of use_csv_no_sup_value. (Ignored for source endpoints.)
	// +kubebuilder:validation:Optional
	csvNoSupValue?: null | string @go(CsvNoSupValue,*string)

	// String to as null when writing to the target. (AWS default is NULL.)
	// +kubebuilder:validation:Optional
	csvNullValue?: null | string @go(CsvNullValue,*string)

	// Delimiter used to separate rows in the source files. Default is newline (i.e., \n).
	// +kubebuilder:validation:Optional
	csvRowDelimiter?: null | string @go(CsvRowDelimiter,*string)

	// Output format for the files that AWS DMS uses to create S3 objects. Valid values are csv and parquet.  (Ignored for source endpoints -- only csv is valid.)
	// +kubebuilder:validation:Optional
	dataFormat?: null | string @go(DataFormat,*string)

	// Size of one data page in bytes. (AWS default is 1 MiB, i.e., 1048576.)
	// +kubebuilder:validation:Optional
	dataPageSize?: null | float64 @go(DataPageSize,*float64)

	// Date separating delimiter to use during folder partitioning. Valid values are SLASH, UNDERSCORE, DASH, and NONE. (AWS default is SLASH.) (Ignored for source endpoints.)
	// +kubebuilder:validation:Optional
	datePartitionDelimiter?: null | string @go(DatePartitionDelimiter,*string)

	// Partition S3 bucket folders based on transaction commit dates. Default is false. (Ignored for source endpoints.)
	// +kubebuilder:validation:Optional
	datePartitionEnabled?: null | bool @go(DatePartitionEnabled,*bool)

	// Date format to use during folder partitioning. Use this parameter when date_partition_enabled is set to true. Valid values are YYYYMMDD, YYYYMMDDHH, YYYYMM, MMYYYYDD, and DDMMYYYY. (AWS default is YYYYMMDD.) (Ignored for source endpoints.)
	// +kubebuilder:validation:Optional
	datePartitionSequence?: null | string @go(DatePartitionSequence,*string)

	// Convert the current UTC time to a timezone. The conversion occurs when a date partition folder is created and a CDC filename is generated. The timezone format is Area/Location (e.g., Europe/Paris). Use this when date_partition_enabled is true. (Ignored for source endpoints.)
	// +kubebuilder:validation:Optional
	datePartitionTimezone?: null | string @go(DatePartitionTimezone,*string)

	// Maximum size in bytes of an encoded dictionary page of a column. (AWS default is 1 MiB, i.e., 1048576.)
	// +kubebuilder:validation:Optional
	dictPageSizeLimit?: null | float64 @go(DictPageSizeLimit,*float64)

	// Whether to enable statistics for Parquet pages and row groups. Default is true.
	// +kubebuilder:validation:Optional
	enableStatistics?: null | bool @go(EnableStatistics,*bool)

	// Type of encoding to use. Value values are rle_dictionary, plain, and plain_dictionary. (AWS default is rle_dictionary.)
	// +kubebuilder:validation:Optional
	encodingType?: null | string @go(EncodingType,*string)

	// Server-side encryption mode that you want to encrypt your .csv or .parquet object files copied to S3. Valid values are SSE_S3 and SSE_KMS. (AWS default is SSE_S3.) (Ignored for source endpoints -- only SSE_S3 is valid.)
	// +kubebuilder:validation:Optional
	encryptionMode?: null | string @go(EncryptionMode,*string)

	// Type of endpoint. Valid values are source, target.
	// +kubebuilder:validation:Required
	endpointType?: null | string @go(EndpointType,*string)

	// Bucket owner to prevent sniping. Value is an AWS account ID.
	// +kubebuilder:validation:Optional
	expectedBucketOwner?: null | string @go(ExpectedBucketOwner,*string)

	// JSON document that describes how AWS DMS should interpret the data.
	// +kubebuilder:validation:Optional
	externalTableDefinition?: null | string @go(ExternalTableDefinition,*string)

	// When this value is set to 1, DMS ignores the first row header in a .csv file. (AWS default is 0.)
	// +kubebuilder:validation:Optional
	ignoreHeaderRows?: null | float64 @go(IgnoreHeaderRows,*float64)

	// Whether to enable a full load to write INSERT operations to the .csv output files only to indicate how the rows were added to the source database. Default is false.
	// +kubebuilder:validation:Optional
	includeOpForFullLoad?: null | bool @go(IncludeOpForFullLoad,*bool)

	// ARN for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for kms_key_arn, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/kms/v1beta1.Key
	// +kubebuilder:validation:Optional
	kmsKeyArn?: null | string @go(KMSKeyArn,*string)

	// Maximum size (in KB) of any .csv file to be created while migrating to an S3 target during full load. Valid values are from 1 to 1048576. (AWS default is 1 GB, i.e., 1048576.)
	// +kubebuilder:validation:Optional
	maxFileSize?: null | float64 @go(MaxFileSize,*float64)

	// - Specifies the precision of any TIMESTAMP column values written to an S3 object file in .parquet format. Default is false. (Ignored for source endpoints.)
	// +kubebuilder:validation:Optional
	parquetTimestampInMillisecond?: null | bool @go(ParquetTimestampInMillisecond,*bool)

	// Version of the .parquet file format. Valid values are parquet-1-0 and parquet-2-0. (AWS default is parquet-1-0.) (Ignored for source endpoints.)
	// +kubebuilder:validation:Optional
	parquetVersion?: null | string @go(ParquetVersion,*string)

	// Whether DMS saves the transaction order for a CDC load on the S3 target specified by cdc_path. Default is false. (Ignored for source endpoints.)
	// +kubebuilder:validation:Optional
	preserveTransactions?: null | bool @go(PreserveTransactions,*bool)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// For an S3 source, whether each leading double quotation mark has to be followed by an ending double quotation mark. Default is true.
	// +kubebuilder:validation:Optional
	rfc4180?: null | bool @go(Rfc4180,*bool)

	// Number of rows in a row group. (AWS default is 10000.)
	// +kubebuilder:validation:Optional
	rowGroupLength?: null | float64 @go(RowGroupLength,*float64)

	// SSL mode to use for the connection. Valid values are none, require, verify-ca, verify-full. (AWS default is none.)
	// +kubebuilder:validation:Optional
	sslMode?: null | string @go(SSLMode,*string)

	// When encryption_mode is SSE_KMS, ARN for the AWS KMS key. (Ignored for source endpoints -- only SSE_S3 encryption_mode is valid.)
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/kms/v1beta1.Key
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	serverSideEncryptionKmsKeyId?: null | string @go(ServerSideEncryptionKMSKeyID,*string)

	// ARN of the IAM role with permissions to the S3 Bucket.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	serviceAccessRoleArn?: null | string @go(ServiceAccessRoleArn,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Column to add with timestamp information to the endpoint data for an Amazon S3 target.
	// +kubebuilder:validation:Optional
	timestampColumnName?: null | string @go(TimestampColumnName,*string)

	// Whether to use csv_no_sup_value for columns not included in the supplemental log. (Ignored for source endpoints.)
	// +kubebuilder:validation:Optional
	useCsvNoSupValue?: null | bool @go(UseCsvNoSupValue,*bool)

	// When set to true, uses the task start time as the timestamp column value instead of the time data is written to target. For full load, when set to true, each row of the timestamp column contains the task start time. For CDC loads, each row of the timestamp column contains the transaction commit time.When set to false, the full load timestamp in the timestamp column increments with the time data arrives at the target. Default is false.
	// +kubebuilder:validation:Optional
	useTaskStartTimeForFullLoadTimestamp?: null | bool @go(UseTaskStartTimeForFullLoadTimestamp,*bool)
}

// S3EndpointSpec defines the desired state of S3Endpoint
#S3EndpointSpec: {
	forProvider: #S3EndpointParameters @go(ForProvider)
}

// S3EndpointStatus defines the observed state of S3Endpoint.
#S3EndpointStatus: {
	atProvider?: #S3EndpointObservation @go(AtProvider)
}

// S3Endpoint is the Schema for the S3Endpoints API. Provides a DMS (Data Migration Service) S3 endpoint resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#S3Endpoint: {
	spec:    #S3EndpointSpec   @go(Spec)
	status?: #S3EndpointStatus @go(Status)
}

// S3EndpointList contains a list of S3Endpoints
#S3EndpointList: {
	items: [...#S3Endpoint] @go(Items,[]S3Endpoint)
}
