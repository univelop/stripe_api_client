// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_session_post_request_body_collected_information_shipping_details.dart';

/// auto generated
/// Information about the customer collected within the Checkout Session. Can only be set when updating `embedded` or `custom` sessions.
class WithSessionPostRequestBodyCollectedInformation
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The shipping_details property
  WithSessionPostRequestBodyCollectedInformationShippingDetails?
      shippingDetails;

  /// Instantiates a new [WithSessionPostRequestBodyCollectedInformation] and sets the default values.
  WithSessionPostRequestBodyCollectedInformation() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSessionPostRequestBodyCollectedInformation
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSessionPostRequestBodyCollectedInformation();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['shipping_details'] = (node) => shippingDetails =
        node.getObjectValue<
                WithSessionPostRequestBodyCollectedInformationShippingDetails>(
            WithSessionPostRequestBodyCollectedInformationShippingDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithSessionPostRequestBodyCollectedInformationShippingDetails>(
        'shipping_details', shippingDetails);
    writer.writeAdditionalData(additionalData);
  }
}
