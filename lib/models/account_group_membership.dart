// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class AccountGroupMembership implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The group the account is in to determine their payments pricing, and null if the account is on customized pricing. [See the Platform pricing tool documentation](https://docs.stripe.com/connect/platform-pricing-tools) for details.
  String? paymentsPricing;

  /// Instantiates a new [AccountGroupMembership] and sets the default values.
  AccountGroupMembership() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountGroupMembership createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountGroupMembership();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payments_pricing'] =
        (node) => paymentsPricing = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('payments_pricing', paymentsPricing);
    writer.writeAdditionalData(additionalData);
  }
}
