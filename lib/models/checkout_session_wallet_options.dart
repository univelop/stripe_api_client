// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './checkout_link_wallet_options.dart';

/// auto generated
class CheckoutSessionWalletOptions implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The link property
  CheckoutLinkWalletOptions? link;

  /// Instantiates a new [CheckoutSessionWalletOptions] and sets the default values.
  CheckoutSessionWalletOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CheckoutSessionWalletOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CheckoutSessionWalletOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<CheckoutLinkWalletOptions>(
            CheckoutLinkWalletOptions.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CheckoutLinkWalletOptions>('link', link);
    writer.writeAdditionalData(additionalData);
  }
}
