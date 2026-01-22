// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_fpx_display_preference.dart';

/// auto generated
/// Financial Process Exchange (FPX) is a Malaysia-based payment method that allows customers to complete transactions online using their bank credentials. Bank Negara Malaysia (BNM), the Central Bank of Malaysia, and eleven other major Malaysian financial institutions are members of the PayNet Group, which owns and operates FPX. It is one of the most popular online payment methods in Malaysia, with nearly 90 million transactions in 2018 according to BNM. Check this [page](https://docs.stripe.com/payments/fpx) for more details.
class WithConfigurationPostRequestBodyFpx
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyFpxDisplayPreference? displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyFpx] and sets the default values.
  WithConfigurationPostRequestBodyFpx() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyFpx createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBodyFpx();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference = node
        .getObjectValue<WithConfigurationPostRequestBodyFpxDisplayPreference>(
            WithConfigurationPostRequestBodyFpxDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<WithConfigurationPostRequestBodyFpxDisplayPreference>(
            'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
