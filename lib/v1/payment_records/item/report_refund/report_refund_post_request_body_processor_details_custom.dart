// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ReportRefundPostRequestBodyProcessorDetailsCustom
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The refund_reference property
  String? refundReference;

  /// Instantiates a new [ReportRefundPostRequestBodyProcessorDetailsCustom] and sets the default values.
  ReportRefundPostRequestBodyProcessorDetailsCustom() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportRefundPostRequestBodyProcessorDetailsCustom
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ReportRefundPostRequestBodyProcessorDetailsCustom();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['refund_reference'] =
        (node) => refundReference = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('refund_reference', refundReference);
    writer.writeAdditionalData(additionalData);
  }
}
