// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class FinancialReportingFinanceReportRunRunParameters
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The set of output columns requested for inclusion in the report run.
  Iterable<String>? columns;

  ///  Connected account ID by which to filter the report run.
  String? connectedAccount;

  ///  Currency of objects to be included in the report run.
  String? currency;

  ///  Ending timestamp of data to be included in the report run. Can be any UTC timestamp between 1 second after the user specified `interval_start` and 1 second before this report's last `data_available_end` value.
  int? intervalEnd;

  ///  Starting timestamp of data to be included in the report run. Can be any UTC timestamp between 1 second after this report's `data_available_start` and 1 second before the user specified `interval_end` value.
  int? intervalStart;

  ///  Payout ID by which to filter the report run.
  String? payout;

  ///  Category of balance transactions to be included in the report run.
  String? reportingCategory;

  ///  Defaults to `Etc/UTC`. The output timezone for all timestamps in the report. A list of possible time zone values is maintained at the [IANA Time Zone Database](http://www.iana.org/time-zones). Has no effect on `interval_start` or `interval_end`.
  String? timezone;

  /// Instantiates a new [FinancialReportingFinanceReportRunRunParameters] and sets the default values.
  FinancialReportingFinanceReportRunRunParameters() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FinancialReportingFinanceReportRunRunParameters
      createFromDiscriminatorValue(ParseNode parseNode) {
    return FinancialReportingFinanceReportRunRunParameters();
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
    deserializerMap['reporting_category'] =
        (node) => reportingCategory = node.getStringValue();
    deserializerMap['timezone'] = (node) => timezone = node.getStringValue();
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
    writer.writeStringValue('reporting_category', reportingCategory);
    writer.writeStringValue('timezone', timezone);
    writer.writeAdditionalData(additionalData);
  }
}
