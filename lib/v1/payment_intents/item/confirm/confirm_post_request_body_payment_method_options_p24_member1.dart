// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_p24_member1_setup_future_usage.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsP24Member1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The setup_future_usage property
  ConfirmPostRequestBodyPaymentMethodOptionsP24Member1SetupFutureUsage?
      setupFutureUsage;

  ///  The tos_shown_and_accepted property
  bool? tosShownAndAccepted;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsP24Member1] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsP24Member1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsP24Member1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsP24Member1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsP24Member1SetupFutureUsage>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsP24Member1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tos_shown_and_accepted'] =
        (node) => tosShownAndAccepted = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsP24Member1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeBoolValue('tos_shown_and_accepted', value: tosShownAndAccepted);
    writer.writeAdditionalData(additionalData);
  }
}
