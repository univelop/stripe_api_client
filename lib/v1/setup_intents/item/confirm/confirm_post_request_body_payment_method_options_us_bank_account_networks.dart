// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account_networks_requested.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The requested property
  Iterable<
          ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountNetworksRequested>?
      requested;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'requested'] = (node) => requested = node.getCollectionOfEnumValues<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountNetworksRequested>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountNetworksRequested
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountNetworksRequested>(
        'requested', requested, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
