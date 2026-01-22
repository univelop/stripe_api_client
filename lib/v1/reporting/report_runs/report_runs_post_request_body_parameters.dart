// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_runs_post_request_body_parameters_reporting_category.dart';
import './report_runs_post_request_body_parameters_timezone.dart';

/// auto generated
/// Parameters specifying how the report should be run. Different Report Types have different required and optional parameters, listed in the [API Access to Reports](https://docs.stripe.com/reporting/statements/api) documentation.
class ReportRunsPostRequestBodyParameters
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The columns property
  Iterable<String>? columns;

  ///  The connected_account property
  String? connectedAccount;

  ///  The currency property
  String? currency;

  ///  The interval_end property
  int? intervalEnd;

  ///  The interval_start property
  int? intervalStart;

  ///  The payout property
  String? payout;

  ///  The reporting_category property
  ReportRunsPostRequestBodyParametersReportingCategory? reportingCategory;

  ///  The timezone property
  ReportRunsPostRequestBodyParametersTimezone? timezone;

  /// Instantiates a new [ReportRunsPostRequestBodyParameters] and sets the default values.
  ReportRunsPostRequestBodyParameters() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportRunsPostRequestBodyParameters createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ReportRunsPostRequestBodyParameters();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['columns'] =
        (node) => columns = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['connected_account'] =
        (node) => connectedAccount = node.getStringValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['interval_end'] =
        (node) => intervalEnd = node.getIntValue();
    deserializerMap['interval_start'] =
        (node) => intervalStart = node.getIntValue();
    deserializerMap['payout'] = (node) => payout = node.getStringValue();
    deserializerMap['reporting_category'] = (node) => reportingCategory =
        node.getEnumValue<ReportRunsPostRequestBodyParametersReportingCategory>(
            (stringValue) =>
                ReportRunsPostRequestBodyParametersReportingCategory.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['timezone'] = (node) => timezone =
        node.getEnumValue<ReportRunsPostRequestBodyParametersTimezone>(
            (stringValue) => ReportRunsPostRequestBodyParametersTimezone.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('columns', columns);
    writer.writeStringValue('connected_account', connectedAccount);
    writer.writeStringValue('currency', currency);
    writer.writeIntValue('interval_end', intervalEnd);
    writer.writeIntValue('interval_start', intervalStart);
    writer.writeStringValue('payout', payout);
    writer.writeEnumValue<ReportRunsPostRequestBodyParametersReportingCategory>(
        'reporting_category', reportingCategory, (e) => e?.value);
    writer.writeEnumValue<ReportRunsPostRequestBodyParametersTimezone>(
        'timezone', timezone, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
