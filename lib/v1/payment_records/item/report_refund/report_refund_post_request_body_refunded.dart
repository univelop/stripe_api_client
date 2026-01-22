// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Information about the payment attempt refund.
class ReportRefundPostRequestBodyRefunded
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The refunded_at property
  int? refundedAt;

  /// Instantiates a new [ReportRefundPostRequestBodyRefunded] and sets the default values.
  ReportRefundPostRequestBodyRefunded() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportRefundPostRequestBodyRefunded createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ReportRefundPostRequestBodyRefunded();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['refunded_at'] = (node) => refundedAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('refunded_at', refundedAt);
    writer.writeAdditionalData(additionalData);
  }
}
