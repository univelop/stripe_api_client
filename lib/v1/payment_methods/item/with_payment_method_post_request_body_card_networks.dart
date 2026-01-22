// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_method_post_request_body_card_networks_preferred.dart';

/// auto generated
class WithPaymentMethodPostRequestBodyCardNetworks
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The preferred property
  WithPaymentMethodPostRequestBodyCardNetworksPreferred? preferred;

  /// Instantiates a new [WithPaymentMethodPostRequestBodyCardNetworks] and sets the default values.
  WithPaymentMethodPostRequestBodyCardNetworks() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentMethodPostRequestBodyCardNetworks
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPaymentMethodPostRequestBodyCardNetworks();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['preferred'] = (node) => preferred = node
        .getEnumValue<WithPaymentMethodPostRequestBodyCardNetworksPreferred>(
            (stringValue) =>
                WithPaymentMethodPostRequestBodyCardNetworksPreferred.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeEnumValue<WithPaymentMethodPostRequestBodyCardNetworksPreferred>(
            'preferred', preferred, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
