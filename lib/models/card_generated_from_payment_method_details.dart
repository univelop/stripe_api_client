// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_details_card_present.dart';

/// auto generated
class CardGeneratedFromPaymentMethodDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The card_present property
  PaymentMethodDetailsCardPresent? cardPresent;

  ///  The type of payment method transaction-specific details from the transaction that generated this `card` payment method. Always `card_present`.
  String? type_;

  /// Instantiates a new [CardGeneratedFromPaymentMethodDetails] and sets the default values.
  CardGeneratedFromPaymentMethodDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardGeneratedFromPaymentMethodDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CardGeneratedFromPaymentMethodDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_present'] = (node) => cardPresent =
        node.getObjectValue<PaymentMethodDetailsCardPresent>(
            PaymentMethodDetailsCardPresent.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentMethodDetailsCardPresent>(
        'card_present', cardPresent);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
