// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/glue/v1beta1

package v1beta1

#ClassifierObservation: {
	// A classifier for Csv content. Defined below.
	csvClassifier?: [...#CsvClassifierObservation] @go(CsvClassifier,[]CsvClassifierObservation)

	// –  A classifier that uses grok patterns. Defined below.
	grokClassifier?: [...#GrokClassifierObservation] @go(GrokClassifier,[]GrokClassifierObservation)

	// Name of the classifier
	id?: null | string @go(ID,*string)

	// –  A classifier for JSON content. Defined below.
	jsonClassifier?: [...#JSONClassifierObservation] @go(JSONClassifier,[]JSONClassifierObservation)

	// –  A classifier for XML content. Defined below.
	xmlClassifier?: [...#XMLClassifierObservation] @go(XMLClassifier,[]XMLClassifierObservation)
}

#ClassifierParameters: {
	// A classifier for Csv content. Defined below.
	// +kubebuilder:validation:Optional
	csvClassifier?: [...#CsvClassifierParameters] @go(CsvClassifier,[]CsvClassifierParameters)

	// –  A classifier that uses grok patterns. Defined below.
	// +kubebuilder:validation:Optional
	grokClassifier?: [...#GrokClassifierParameters] @go(GrokClassifier,[]GrokClassifierParameters)

	// –  A classifier for JSON content. Defined below.
	// +kubebuilder:validation:Optional
	jsonClassifier?: [...#JSONClassifierParameters] @go(JSONClassifier,[]JSONClassifierParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// –  A classifier for XML content. Defined below.
	// +kubebuilder:validation:Optional
	xmlClassifier?: [...#XMLClassifierParameters] @go(XMLClassifier,[]XMLClassifierParameters)
}

#CsvClassifierObservation: {
	// Enables the processing of files that contain only one column.
	allowSingleColumn?: null | bool @go(AllowSingleColumn,*bool)

	// Indicates whether the CSV file contains a header. This can be one of "ABSENT", "PRESENT", or "UNKNOWN".
	containsHeader?: null | string @go(ContainsHeader,*string)

	// A custom symbol to denote what combines content into a single column value. It must be different from the column delimiter.
	customDatatypeConfigured?: null | bool @go(CustomDatatypeConfigured,*bool)

	// A list of supported custom datatypes. Valid values are BINARY, BOOLEAN, DATE, DECIMAL, DOUBLE, FLOAT, INT, LONG, SHORT, STRING, TIMESTAMP.
	customDatatypes?: [...null | string] @go(CustomDatatypes,[]*string)

	// The delimiter used in the Csv to separate columns.
	delimiter?: null | string @go(Delimiter,*string)

	// Specifies whether to trim column values.
	disableValueTrimming?: null | bool @go(DisableValueTrimming,*bool)

	// A list of strings representing column names.
	header?: [...null | string] @go(Header,[]*string)

	// A custom symbol to denote what combines content into a single column value. It must be different from the column delimiter.
	quoteSymbol?: null | string @go(QuoteSymbol,*string)
}

#CsvClassifierParameters: {
	// Enables the processing of files that contain only one column.
	// +kubebuilder:validation:Optional
	allowSingleColumn?: null | bool @go(AllowSingleColumn,*bool)

	// Indicates whether the CSV file contains a header. This can be one of "ABSENT", "PRESENT", or "UNKNOWN".
	// +kubebuilder:validation:Optional
	containsHeader?: null | string @go(ContainsHeader,*string)

	// A custom symbol to denote what combines content into a single column value. It must be different from the column delimiter.
	// +kubebuilder:validation:Optional
	customDatatypeConfigured?: null | bool @go(CustomDatatypeConfigured,*bool)

	// A list of supported custom datatypes. Valid values are BINARY, BOOLEAN, DATE, DECIMAL, DOUBLE, FLOAT, INT, LONG, SHORT, STRING, TIMESTAMP.
	// +kubebuilder:validation:Optional
	customDatatypes?: [...null | string] @go(CustomDatatypes,[]*string)

	// The delimiter used in the Csv to separate columns.
	// +kubebuilder:validation:Optional
	delimiter?: null | string @go(Delimiter,*string)

	// Specifies whether to trim column values.
	// +kubebuilder:validation:Optional
	disableValueTrimming?: null | bool @go(DisableValueTrimming,*bool)

	// A list of strings representing column names.
	// +kubebuilder:validation:Optional
	header?: [...null | string] @go(Header,[]*string)

	// A custom symbol to denote what combines content into a single column value. It must be different from the column delimiter.
	// +kubebuilder:validation:Optional
	quoteSymbol?: null | string @go(QuoteSymbol,*string)
}

#GrokClassifierObservation: {
	// An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.
	classification?: null | string @go(Classification,*string)

	// Custom grok patterns used by this classifier.
	customPatterns?: null | string @go(CustomPatterns,*string)

	// The grok pattern used by this classifier.
	grokPattern?: null | string @go(GrokPattern,*string)
}

#GrokClassifierParameters: {
	// An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.
	// +kubebuilder:validation:Required
	classification?: null | string @go(Classification,*string)

	// Custom grok patterns used by this classifier.
	// +kubebuilder:validation:Optional
	customPatterns?: null | string @go(CustomPatterns,*string)

	// The grok pattern used by this classifier.
	// +kubebuilder:validation:Required
	grokPattern?: null | string @go(GrokPattern,*string)
}

#JSONClassifierObservation: {
	// A JsonPath string defining the JSON data for the classifier to classify. AWS Glue supports a subset of JsonPath, as described in Writing JsonPath Custom Classifiers.
	jsonPath?: null | string @go(JSONPath,*string)
}

#JSONClassifierParameters: {
	// A JsonPath string defining the JSON data for the classifier to classify. AWS Glue supports a subset of JsonPath, as described in Writing JsonPath Custom Classifiers.
	// +kubebuilder:validation:Required
	jsonPath?: null | string @go(JSONPath,*string)
}

#XMLClassifierObservation: {
	// An identifier of the data format that the classifier matches.
	classification?: null | string @go(Classification,*string)

	// The XML tag designating the element that contains each record in an XML document being parsed. Note that this cannot identify a self-closing element (closed by />). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, <row item_a="A" item_b="B"></row> is okay, but <row item_a="A" item_b="B" /> is not).
	rowTag?: null | string @go(RowTag,*string)
}

#XMLClassifierParameters: {
	// An identifier of the data format that the classifier matches.
	// +kubebuilder:validation:Required
	classification?: null | string @go(Classification,*string)

	// The XML tag designating the element that contains each record in an XML document being parsed. Note that this cannot identify a self-closing element (closed by />). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, <row item_a="A" item_b="B"></row> is okay, but <row item_a="A" item_b="B" /> is not).
	// +kubebuilder:validation:Required
	rowTag?: null | string @go(RowTag,*string)
}

// ClassifierSpec defines the desired state of Classifier
#ClassifierSpec: {
	forProvider: #ClassifierParameters @go(ForProvider)
}

// ClassifierStatus defines the observed state of Classifier.
#ClassifierStatus: {
	atProvider?: #ClassifierObservation @go(AtProvider)
}

// Classifier is the Schema for the Classifiers API. Provides an Glue Classifier resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Classifier: {
	spec:    #ClassifierSpec   @go(Spec)
	status?: #ClassifierStatus @go(Status)
}

// ClassifierList contains a list of Classifiers
#ClassifierList: {
	items: [...#Classifier] @go(Items,[]Classifier)
}
