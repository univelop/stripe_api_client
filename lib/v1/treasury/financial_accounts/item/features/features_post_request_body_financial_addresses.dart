// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './features_post_request_body_financial_addresses_aba.dart';

/// auto generated
/// Contains Features that add FinancialAddresses to the FinancialAccount.
class FeaturesPostRequestBodyFinancialAddresses
    implements AdditionalDataHolder, Parsable {
  ///  The aba property
  FeaturesPostRequestBodyFinancialAddressesAba? aba;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [FeaturesPostRequestBodyFinancialAddresses] and sets the default values.
  FeaturesPostRequestBodyFinancialAddresses() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FeaturesPostRequestBodyFinancialAddresses createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FeaturesPostRequestBodyFinancialAddresses();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['aba'] = (node) => aba =
        node.getObjectValue<FeaturesPostRequestBodyFinancialAddressesAba>(
            FeaturesPostRequestBodyFinancialAddressesAba
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<FeaturesPostRequestBodyFinancialAddressesAba>(
        'aba', aba);
    writer.writeAdditionalData(additionalData);
  }
}
