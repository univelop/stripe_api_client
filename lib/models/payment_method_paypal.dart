// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodPaypal implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Two-letter ISO code representing the buyer's country. Values are provided by PayPal directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
  String? country;

  ///  Owner's email. Values are provided by PayPal directly(if supported) at the time of authorization or settlement. They cannot be set or mutated.
  String? payerEmail;

  ///  PayPal account PayerID. This identifier uniquely identifies the PayPal customer.
  String? payerId;

  /// Instantiates a new [PaymentMethodPaypal] and sets the default values.
  PaymentMethodPaypal() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodPaypal createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodPaypal();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['payer_email'] =
        (node) => payerEmail = node.getStringValue();
    deserializerMap['payer_id'] = (node) => payerId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('country', country);
    writer.writeStringValue('payer_email', payerEmail);
    writer.writeStringValue('payer_id', payerId);
    writer.writeAdditionalData(additionalData);
  }
}
