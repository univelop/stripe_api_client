// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class DisputePaymentMethodDetailsKlarna
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Chargeback loss reason mapped by Stripe from Klarna's chargeback loss reason
  String? chargebackLossReasonCode;

  ///  The reason for the dispute as defined by Klarna
  String? reasonCode;

  /// Instantiates a new [DisputePaymentMethodDetailsKlarna] and sets the default values.
  DisputePaymentMethodDetailsKlarna() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputePaymentMethodDetailsKlarna createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DisputePaymentMethodDetailsKlarna();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['chargeback_loss_reason_code'] =
        (node) => chargebackLossReasonCode = node.getStringValue();
    deserializerMap['reason_code'] =
        (node) => reasonCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue(
        'chargeback_loss_reason_code', chargebackLossReasonCode);
    writer.writeStringValue('reason_code', reasonCode);
    writer.writeAdditionalData(additionalData);
  }
}
