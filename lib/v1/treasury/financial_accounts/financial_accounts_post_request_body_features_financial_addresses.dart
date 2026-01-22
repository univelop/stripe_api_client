// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './financial_accounts_post_request_body_features_financial_addresses_aba.dart';

/// auto generated
class FinancialAccountsPostRequestBodyFeaturesFinancialAddresses
    implements AdditionalDataHolder, Parsable {
  ///  The aba property
  FinancialAccountsPostRequestBodyFeaturesFinancialAddressesAba? aba;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [FinancialAccountsPostRequestBodyFeaturesFinancialAddresses] and sets the default values.
  FinancialAccountsPostRequestBodyFeaturesFinancialAddresses()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FinancialAccountsPostRequestBodyFeaturesFinancialAddresses
      createFromDiscriminatorValue(ParseNode parseNode) {
    return FinancialAccountsPostRequestBodyFeaturesFinancialAddresses();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['aba'] = (node) => aba = node.getObjectValue<
            FinancialAccountsPostRequestBodyFeaturesFinancialAddressesAba>(
        FinancialAccountsPostRequestBodyFeaturesFinancialAddressesAba
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            FinancialAccountsPostRequestBodyFeaturesFinancialAddressesAba>(
        'aba', aba);
    writer.writeAdditionalData(additionalData);
  }
}
