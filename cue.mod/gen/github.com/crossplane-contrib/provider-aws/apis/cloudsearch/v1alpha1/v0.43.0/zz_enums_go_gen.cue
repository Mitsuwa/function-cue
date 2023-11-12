// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/cloudsearch/v1alpha1

package v1alpha1

#AlgorithmicStemming: string // #enumAlgorithmicStemming

#enumAlgorithmicStemming:
	#AlgorithmicStemming_none |
	#AlgorithmicStemming_minimal |
	#AlgorithmicStemming_light |
	#AlgorithmicStemming_full

#AlgorithmicStemming_none:    #AlgorithmicStemming & "none"
#AlgorithmicStemming_minimal: #AlgorithmicStemming & "minimal"
#AlgorithmicStemming_light:   #AlgorithmicStemming & "light"
#AlgorithmicStemming_full:    #AlgorithmicStemming & "full"

#AnalysisSchemeLanguage: string // #enumAnalysisSchemeLanguage

#enumAnalysisSchemeLanguage:
	#AnalysisSchemeLanguage_ar |
	#AnalysisSchemeLanguage_bg |
	#AnalysisSchemeLanguage_ca |
	#AnalysisSchemeLanguage_cs |
	#AnalysisSchemeLanguage_da |
	#AnalysisSchemeLanguage_de |
	#AnalysisSchemeLanguage_el |
	#AnalysisSchemeLanguage_en |
	#AnalysisSchemeLanguage_es |
	#AnalysisSchemeLanguage_eu |
	#AnalysisSchemeLanguage_fa |
	#AnalysisSchemeLanguage_fi |
	#AnalysisSchemeLanguage_fr |
	#AnalysisSchemeLanguage_ga |
	#AnalysisSchemeLanguage_gl |
	#AnalysisSchemeLanguage_he |
	#AnalysisSchemeLanguage_hi |
	#AnalysisSchemeLanguage_hu |
	#AnalysisSchemeLanguage_hy |
	#AnalysisSchemeLanguage_id |
	#AnalysisSchemeLanguage_it |
	#AnalysisSchemeLanguage_ja |
	#AnalysisSchemeLanguage_ko |
	#AnalysisSchemeLanguage_lv |
	#AnalysisSchemeLanguage_mul |
	#AnalysisSchemeLanguage_nl |
	#AnalysisSchemeLanguage_no |
	#AnalysisSchemeLanguage_pt |
	#AnalysisSchemeLanguage_ro |
	#AnalysisSchemeLanguage_ru |
	#AnalysisSchemeLanguage_sv |
	#AnalysisSchemeLanguage_th |
	#AnalysisSchemeLanguage_tr |
	#AnalysisSchemeLanguage_zh_Hans |
	#AnalysisSchemeLanguage_zh_Hant

#AnalysisSchemeLanguage_ar:      #AnalysisSchemeLanguage & "ar"
#AnalysisSchemeLanguage_bg:      #AnalysisSchemeLanguage & "bg"
#AnalysisSchemeLanguage_ca:      #AnalysisSchemeLanguage & "ca"
#AnalysisSchemeLanguage_cs:      #AnalysisSchemeLanguage & "cs"
#AnalysisSchemeLanguage_da:      #AnalysisSchemeLanguage & "da"
#AnalysisSchemeLanguage_de:      #AnalysisSchemeLanguage & "de"
#AnalysisSchemeLanguage_el:      #AnalysisSchemeLanguage & "el"
#AnalysisSchemeLanguage_en:      #AnalysisSchemeLanguage & "en"
#AnalysisSchemeLanguage_es:      #AnalysisSchemeLanguage & "es"
#AnalysisSchemeLanguage_eu:      #AnalysisSchemeLanguage & "eu"
#AnalysisSchemeLanguage_fa:      #AnalysisSchemeLanguage & "fa"
#AnalysisSchemeLanguage_fi:      #AnalysisSchemeLanguage & "fi"
#AnalysisSchemeLanguage_fr:      #AnalysisSchemeLanguage & "fr"
#AnalysisSchemeLanguage_ga:      #AnalysisSchemeLanguage & "ga"
#AnalysisSchemeLanguage_gl:      #AnalysisSchemeLanguage & "gl"
#AnalysisSchemeLanguage_he:      #AnalysisSchemeLanguage & "he"
#AnalysisSchemeLanguage_hi:      #AnalysisSchemeLanguage & "hi"
#AnalysisSchemeLanguage_hu:      #AnalysisSchemeLanguage & "hu"
#AnalysisSchemeLanguage_hy:      #AnalysisSchemeLanguage & "hy"
#AnalysisSchemeLanguage_id:      #AnalysisSchemeLanguage & "id"
#AnalysisSchemeLanguage_it:      #AnalysisSchemeLanguage & "it"
#AnalysisSchemeLanguage_ja:      #AnalysisSchemeLanguage & "ja"
#AnalysisSchemeLanguage_ko:      #AnalysisSchemeLanguage & "ko"
#AnalysisSchemeLanguage_lv:      #AnalysisSchemeLanguage & "lv"
#AnalysisSchemeLanguage_mul:     #AnalysisSchemeLanguage & "mul"
#AnalysisSchemeLanguage_nl:      #AnalysisSchemeLanguage & "nl"
#AnalysisSchemeLanguage_no:      #AnalysisSchemeLanguage & "no"
#AnalysisSchemeLanguage_pt:      #AnalysisSchemeLanguage & "pt"
#AnalysisSchemeLanguage_ro:      #AnalysisSchemeLanguage & "ro"
#AnalysisSchemeLanguage_ru:      #AnalysisSchemeLanguage & "ru"
#AnalysisSchemeLanguage_sv:      #AnalysisSchemeLanguage & "sv"
#AnalysisSchemeLanguage_th:      #AnalysisSchemeLanguage & "th"
#AnalysisSchemeLanguage_tr:      #AnalysisSchemeLanguage & "tr"
#AnalysisSchemeLanguage_zh_Hans: #AnalysisSchemeLanguage & "zh-Hans"
#AnalysisSchemeLanguage_zh_Hant: #AnalysisSchemeLanguage & "zh-Hant"

#IndexFieldType: string // #enumIndexFieldType

#enumIndexFieldType:
	#IndexFieldType_int |
	#IndexFieldType_double |
	#IndexFieldType_literal |
	#IndexFieldType_text |
	#IndexFieldType_date |
	#IndexFieldType_latlon |
	#IndexFieldType_int_array |
	#IndexFieldType_double_array |
	#IndexFieldType_literal_array |
	#IndexFieldType_text_array |
	#IndexFieldType_date_array

#IndexFieldType_int:           #IndexFieldType & "int"
#IndexFieldType_double:        #IndexFieldType & "double"
#IndexFieldType_literal:       #IndexFieldType & "literal"
#IndexFieldType_text:          #IndexFieldType & "text"
#IndexFieldType_date:          #IndexFieldType & "date"
#IndexFieldType_latlon:        #IndexFieldType & "latlon"
#IndexFieldType_int_array:     #IndexFieldType & "int-array"
#IndexFieldType_double_array:  #IndexFieldType & "double-array"
#IndexFieldType_literal_array: #IndexFieldType & "literal-array"
#IndexFieldType_text_array:    #IndexFieldType & "text-array"
#IndexFieldType_date_array:    #IndexFieldType & "date-array"

#OptionState: string // #enumOptionState

#enumOptionState:
	#OptionState_RequiresIndexDocuments |
	#OptionState_Processing |
	#OptionState_Active |
	#OptionState_FailedToValidate

#OptionState_RequiresIndexDocuments: #OptionState & "RequiresIndexDocuments"
#OptionState_Processing:             #OptionState & "Processing"
#OptionState_Active:                 #OptionState & "Active"
#OptionState_FailedToValidate:       #OptionState & "FailedToValidate"

#PartitionInstanceType: string // #enumPartitionInstanceType

#enumPartitionInstanceType:
	#PartitionInstanceType_search_m1_small |
	#PartitionInstanceType_search_m1_large |
	#PartitionInstanceType_search_m2_xlarge |
	#PartitionInstanceType_search_m2_2xlarge |
	#PartitionInstanceType_search_m3_medium |
	#PartitionInstanceType_search_m3_large |
	#PartitionInstanceType_search_m3_xlarge |
	#PartitionInstanceType_search_m3_2xlarge |
	#PartitionInstanceType_search_small |
	#PartitionInstanceType_search_medium |
	#PartitionInstanceType_search_large |
	#PartitionInstanceType_search_xlarge |
	#PartitionInstanceType_search_2xlarge |
	#PartitionInstanceType_search_previousgeneration_small |
	#PartitionInstanceType_search_previousgeneration_large |
	#PartitionInstanceType_search_previousgeneration_xlarge |
	#PartitionInstanceType_search_previousgeneration_2xlarge

#PartitionInstanceType_search_m1_small:                   #PartitionInstanceType & "search.m1.small"
#PartitionInstanceType_search_m1_large:                   #PartitionInstanceType & "search.m1.large"
#PartitionInstanceType_search_m2_xlarge:                  #PartitionInstanceType & "search.m2.xlarge"
#PartitionInstanceType_search_m2_2xlarge:                 #PartitionInstanceType & "search.m2.2xlarge"
#PartitionInstanceType_search_m3_medium:                  #PartitionInstanceType & "search.m3.medium"
#PartitionInstanceType_search_m3_large:                   #PartitionInstanceType & "search.m3.large"
#PartitionInstanceType_search_m3_xlarge:                  #PartitionInstanceType & "search.m3.xlarge"
#PartitionInstanceType_search_m3_2xlarge:                 #PartitionInstanceType & "search.m3.2xlarge"
#PartitionInstanceType_search_small:                      #PartitionInstanceType & "search.small"
#PartitionInstanceType_search_medium:                     #PartitionInstanceType & "search.medium"
#PartitionInstanceType_search_large:                      #PartitionInstanceType & "search.large"
#PartitionInstanceType_search_xlarge:                     #PartitionInstanceType & "search.xlarge"
#PartitionInstanceType_search_2xlarge:                    #PartitionInstanceType & "search.2xlarge"
#PartitionInstanceType_search_previousgeneration_small:   #PartitionInstanceType & "search.previousgeneration.small"
#PartitionInstanceType_search_previousgeneration_large:   #PartitionInstanceType & "search.previousgeneration.large"
#PartitionInstanceType_search_previousgeneration_xlarge:  #PartitionInstanceType & "search.previousgeneration.xlarge"
#PartitionInstanceType_search_previousgeneration_2xlarge: #PartitionInstanceType & "search.previousgeneration.2xlarge"

#SuggesterFuzzyMatching: string // #enumSuggesterFuzzyMatching

#enumSuggesterFuzzyMatching:
	#SuggesterFuzzyMatching_none |
	#SuggesterFuzzyMatching_low |
	#SuggesterFuzzyMatching_high

#SuggesterFuzzyMatching_none: #SuggesterFuzzyMatching & "none"
#SuggesterFuzzyMatching_low:  #SuggesterFuzzyMatching & "low"
#SuggesterFuzzyMatching_high: #SuggesterFuzzyMatching & "high"

#TLSSecurityPolicy: string // #enumTLSSecurityPolicy

#enumTLSSecurityPolicy:
	#TLSSecurityPolicy_Policy_Min_TLS_1_0_2019_07 |
	#TLSSecurityPolicy_Policy_Min_TLS_1_2_2019_07

#TLSSecurityPolicy_Policy_Min_TLS_1_0_2019_07: #TLSSecurityPolicy & "Policy-Min-TLS-1-0-2019-07"
#TLSSecurityPolicy_Policy_Min_TLS_1_2_2019_07: #TLSSecurityPolicy & "Policy-Min-TLS-1-2-2019-07"
