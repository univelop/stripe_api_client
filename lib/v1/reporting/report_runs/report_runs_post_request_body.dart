// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_runs_post_request_body_parameters.dart';

/// auto generated
class ReportRunsPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Parameters specifying how the report should be run. Different Report Types have different required and optional parameters, listed in the [API Access to Reports](https://docs.stripe.com/reporting/statements/api) documentation.
  ReportRunsPostRequestBodyParameters? parameters;

  ///  The ID of the [report type](https://docs.stripe.com/reporting/statements/api#report-types) to run, such as `"balance.summary.1"`.
  String? reportType;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportRunsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ReportRunsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['parameters'] = (node) => parameters =
        node.getObjectValue<ReportRunsPostRequestBodyParameters>(
            ReportRunsPostRequestBodyParameters.createFromDiscriminatorValue);
    deserializerMap['report_type'] =
        (node) => reportType = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<ReportRunsPostRequestBodyParameters>(
        'parameters', parameters);
    writer.writeStringValue('report_type', reportType);
  }
}
