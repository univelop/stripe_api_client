// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class DisputePaymentMethodDetailsPaypal
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ID of the dispute in PayPal.
  String? caseId;

  ///  The reason for the dispute as defined by PayPal
  String? reasonCode;

  /// Instantiates a new [DisputePaymentMethodDetailsPaypal] and sets the default values.
  DisputePaymentMethodDetailsPaypal() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputePaymentMethodDetailsPaypal createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DisputePaymentMethodDetailsPaypal();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['case_id'] = (node) => caseId = node.getStringValue();
    deserializerMap['reason_code'] =
        (node) => reasonCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('case_id', caseId);
    writer.writeStringValue('reason_code', reasonCode);
    writer.writeAdditionalData(additionalData);
  }
}
