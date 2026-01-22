// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_payment_post_request_body_processor_details_custom.dart';
import './report_payment_post_request_body_processor_details_type.dart';

/// auto generated
/// Processor information for this payment.
class ReportPaymentPostRequestBodyProcessorDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The custom property
  ReportPaymentPostRequestBodyProcessorDetailsCustom? custom;

  ///  The type property
  ReportPaymentPostRequestBodyProcessorDetailsType? type_;

  /// Instantiates a new [ReportPaymentPostRequestBodyProcessorDetails] and sets the default values.
  ReportPaymentPostRequestBodyProcessorDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportPaymentPostRequestBodyProcessorDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ReportPaymentPostRequestBodyProcessorDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['custom'] = (node) => custom =
        node.getObjectValue<ReportPaymentPostRequestBodyProcessorDetailsCustom>(
            ReportPaymentPostRequestBodyProcessorDetailsCustom
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<ReportPaymentPostRequestBodyProcessorDetailsType>(
            (stringValue) => ReportPaymentPostRequestBodyProcessorDetailsType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ReportPaymentPostRequestBodyProcessorDetailsCustom>(
        'custom', custom);
    writer.writeEnumValue<ReportPaymentPostRequestBodyProcessorDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
