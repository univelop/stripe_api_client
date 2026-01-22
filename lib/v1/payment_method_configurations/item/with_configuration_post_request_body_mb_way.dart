// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_mb_way_display_preference.dart';

/// auto generated
/// MB WAY is the most popular wallet in Portugal. After entering their phone number in your checkout, customers approve the payment directly in their MB WAY app. Check this [page](https://docs.stripe.com/payments/mb-way) for more details.
class WithConfigurationPostRequestBodyMbWay
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyMbWayDisplayPreference? displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyMbWay] and sets the default values.
  WithConfigurationPostRequestBodyMbWay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyMbWay createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBodyMbWay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference = node
        .getObjectValue<WithConfigurationPostRequestBodyMbWayDisplayPreference>(
            WithConfigurationPostRequestBodyMbWayDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyMbWayDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
