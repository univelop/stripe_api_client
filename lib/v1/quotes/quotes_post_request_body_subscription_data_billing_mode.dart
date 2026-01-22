// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_post_request_body_subscription_data_billing_mode_flexible.dart';
import './quotes_post_request_body_subscription_data_billing_mode_type.dart';

/// auto generated
class QuotesPostRequestBodySubscriptionDataBillingMode
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The flexible property
  QuotesPostRequestBodySubscriptionDataBillingModeFlexible? flexible;

  ///  The type property
  QuotesPostRequestBodySubscriptionDataBillingModeType? type_;

  /// Instantiates a new [QuotesPostRequestBodySubscriptionDataBillingMode] and sets the default values.
  QuotesPostRequestBodySubscriptionDataBillingMode() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesPostRequestBodySubscriptionDataBillingMode
      createFromDiscriminatorValue(ParseNode parseNode) {
    return QuotesPostRequestBodySubscriptionDataBillingMode();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['flexible'] = (node) => flexible = node.getObjectValue<
            QuotesPostRequestBodySubscriptionDataBillingModeFlexible>(
        QuotesPostRequestBodySubscriptionDataBillingModeFlexible
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<QuotesPostRequestBodySubscriptionDataBillingModeType>(
            (stringValue) =>
                QuotesPostRequestBodySubscriptionDataBillingModeType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            QuotesPostRequestBodySubscriptionDataBillingModeFlexible>(
        'flexible', flexible);
    writer.writeEnumValue<QuotesPostRequestBodySubscriptionDataBillingModeType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
