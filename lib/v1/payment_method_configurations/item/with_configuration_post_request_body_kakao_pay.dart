// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_kakao_pay_display_preference.dart';

/// auto generated
/// Kakao Pay is a popular local wallet available in South Korea.
class WithConfigurationPostRequestBodyKakaoPay
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyKakaoPayDisplayPreference? displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyKakaoPay] and sets the default values.
  WithConfigurationPostRequestBodyKakaoPay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyKakaoPay createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBodyKakaoPay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference =
        node.getObjectValue<
                WithConfigurationPostRequestBodyKakaoPayDisplayPreference>(
            WithConfigurationPostRequestBodyKakaoPayDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyKakaoPayDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
