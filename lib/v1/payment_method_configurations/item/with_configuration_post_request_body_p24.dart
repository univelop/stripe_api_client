// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_p24_display_preference.dart';

/// auto generated
/// Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://docs.stripe.com/payments/p24) for more details.
class WithConfigurationPostRequestBodyP24
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyP24DisplayPreference? displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyP24] and sets the default values.
  WithConfigurationPostRequestBodyP24() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyP24 createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBodyP24();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference = node
        .getObjectValue<WithConfigurationPostRequestBodyP24DisplayPreference>(
            WithConfigurationPostRequestBodyP24DisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<WithConfigurationPostRequestBodyP24DisplayPreference>(
            'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
