// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_cardholder_post_request_body_billing_address.dart';

/// auto generated
/// The cardholder's billing address.
class WithCardholderPostRequestBodyBilling
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  WithCardholderPostRequestBodyBillingAddress? address;

  /// Instantiates a new [WithCardholderPostRequestBodyBilling] and sets the default values.
  WithCardholderPostRequestBodyBilling() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCardholderPostRequestBodyBilling createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithCardholderPostRequestBodyBilling();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<WithCardholderPostRequestBodyBillingAddress>(
            WithCardholderPostRequestBodyBillingAddress
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithCardholderPostRequestBodyBillingAddress>(
        'address', address);
    writer.writeAdditionalData(additionalData);
  }
}
