// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './checkout_link_wallet_options_display.dart';

/// auto generated
class CheckoutLinkWalletOptions implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Describes whether Checkout should display Link. Defaults to `auto`.
  CheckoutLinkWalletOptionsDisplay? display;

  /// Instantiates a new [CheckoutLinkWalletOptions] and sets the default values.
  CheckoutLinkWalletOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CheckoutLinkWalletOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CheckoutLinkWalletOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display'] = (node) => display =
        node.getEnumValue<CheckoutLinkWalletOptionsDisplay>((stringValue) =>
            CheckoutLinkWalletOptionsDisplay.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<CheckoutLinkWalletOptionsDisplay>(
        'display', display, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
