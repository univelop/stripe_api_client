// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';

/// auto generated
class PaymentMethodDetailsCardWalletVisaCheckout
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Owner's verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
  Address? billingAddress;

  ///  Owner's verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
  String? email;

  ///  Owner's verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
  String? name;

  ///  Owner's verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
  Address? shippingAddress;

  /// Instantiates a new [PaymentMethodDetailsCardWalletVisaCheckout] and sets the default values.
  PaymentMethodDetailsCardWalletVisaCheckout() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsCardWalletVisaCheckout
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodDetailsCardWalletVisaCheckout();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_address'] = (node) => billingAddress =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['shipping_address'] = (node) => shippingAddress =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Address>('billing_address', billingAddress);
    writer.writeStringValue('email', email);
    writer.writeStringValue('name', name);
    writer.writeObjectValue<Address>('shipping_address', shippingAddress);
    writer.writeAdditionalData(additionalData);
  }
}
