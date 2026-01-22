// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_refund_post_request_body_processor_details_custom.dart';
import './report_refund_post_request_body_processor_details_type.dart';

/// auto generated
/// Processor information for this refund.
class ReportRefundPostRequestBodyProcessorDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The custom property
  ReportRefundPostRequestBodyProcessorDetailsCustom? custom;

  ///  The type property
  ReportRefundPostRequestBodyProcessorDetailsType? type_;

  /// Instantiates a new [ReportRefundPostRequestBodyProcessorDetails] and sets the default values.
  ReportRefundPostRequestBodyProcessorDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportRefundPostRequestBodyProcessorDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ReportRefundPostRequestBodyProcessorDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['custom'] = (node) => custom =
        node.getObjectValue<ReportRefundPostRequestBodyProcessorDetailsCustom>(
            ReportRefundPostRequestBodyProcessorDetailsCustom
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<ReportRefundPostRequestBodyProcessorDetailsType>(
            (stringValue) => ReportRefundPostRequestBodyProcessorDetailsType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ReportRefundPostRequestBodyProcessorDetailsCustom>(
        'custom', custom);
    writer.writeEnumValue<ReportRefundPostRequestBodyProcessorDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
