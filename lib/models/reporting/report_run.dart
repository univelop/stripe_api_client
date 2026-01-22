// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../file.dart';
import '../financial_reporting_finance_report_run_run_parameters.dart';
import './report_run_object.dart';

/// auto generated
/// The Report Run object represents an instance of a report type generated withspecific run parameters. Once the object is created, Stripe begins processing the report.When the report has finished running, it will give you a reference to a filewhere you can retrieve your results. For an overview, see[API Access to Reports](https://docs.stripe.com/reporting/statements/api).Note that certain report types can only be run based on your live-mode data (not test-modedata), and will error when queried without a [live-mode API key](https://docs.stripe.com/keys#test-live-modes).
class ReportRun implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  If something should go wrong during the run, a message about the failure (populated when `status=failed`).
  String? error;

  ///  Unique identifier for the object.
  String? id;

  ///  `true` if the report is run on live mode data and `false` if it is run on test mode data.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  ReportRunObject? object;

  ///  The parameters property
  FinancialReportingFinanceReportRunRunParameters? parameters;

  ///  The ID of the [report type](https://docs.stripe.com/reports/report-types) to run, such as `"balance.summary.1"`.
  String? reportType;

  ///  The file object representing the result of the report run (populated when `status=succeeded`).
  File? result;

  ///  Status of this report run. This will be `pending` when the run is initially created. When the run finishes, this will be set to `succeeded` and the `result` field will be populated. Rarely, we may encounter an error, at which point this will be set to `failed` and the `error` field will be populated.
  String? status;

  ///  Timestamp at which this run successfully finished (populated when `status=succeeded`). Measured in seconds since the Unix epoch.
  int? succeededAt;

  /// Instantiates a new [ReportRun] and sets the default values.
  ReportRun() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportRun createFromDiscriminatorValue(ParseNode parseNode) {
    return ReportRun();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['error'] = (node) => error = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object = node
        .getEnumValue<ReportRunObject>((stringValue) => ReportRunObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['parameters'] = (node) => parameters =
        node.getObjectValue<FinancialReportingFinanceReportRunRunParameters>(
            FinancialReportingFinanceReportRunRunParameters
                .createFromDiscriminatorValue);
    deserializerMap['report_type'] =
        (node) => reportType = node.getStringValue();
    deserializerMap['result'] = (node) =>
        result = node.getObjectValue<File>(File.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status = node.getStringValue();
    deserializerMap['succeeded_at'] =
        (node) => succeededAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeStringValue('error', error);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<ReportRunObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<FinancialReportingFinanceReportRunRunParameters>(
        'parameters', parameters);
    writer.writeStringValue('report_type', reportType);
    writer.writeObjectValue<File>('result', result);
    writer.writeStringValue('status', status);
    writer.writeIntValue('succeeded_at', succeededAt);
    writer.writeAdditionalData(additionalData);
  }
}
