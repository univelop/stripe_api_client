// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_saved_payment_method_options_allow_redisplay_filters.dart';
import './sessions_post_request_body_saved_payment_method_options_payment_method_remove.dart';
import './sessions_post_request_body_saved_payment_method_options_payment_method_save.dart';

/// auto generated
/// Controls saved payment method settings for the session. Only available in `payment` and `subscription` mode.
class SessionsPostRequestBodySavedPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The allow_redisplay_filters property
  Iterable<
          SessionsPostRequestBodySavedPaymentMethodOptionsAllowRedisplayFilters>?
      allowRedisplayFilters;

  ///  The payment_method_remove property
  SessionsPostRequestBodySavedPaymentMethodOptionsPaymentMethodRemove?
      paymentMethodRemove;

  ///  The payment_method_save property
  SessionsPostRequestBodySavedPaymentMethodOptionsPaymentMethodSave?
      paymentMethodSave;

  /// Instantiates a new [SessionsPostRequestBodySavedPaymentMethodOptions] and sets the default values.
  SessionsPostRequestBodySavedPaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodySavedPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodySavedPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allow_redisplay_filters'] = (node) =>
        allowRedisplayFilters = node.getCollectionOfEnumValues<
                SessionsPostRequestBodySavedPaymentMethodOptionsAllowRedisplayFilters>(
            (stringValue) =>
                SessionsPostRequestBodySavedPaymentMethodOptionsAllowRedisplayFilters
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'payment_method_remove'] = (node) => paymentMethodRemove = node.getEnumValue<
            SessionsPostRequestBodySavedPaymentMethodOptionsPaymentMethodRemove>(
        (stringValue) =>
            SessionsPostRequestBodySavedPaymentMethodOptionsPaymentMethodRemove
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'payment_method_save'] = (node) => paymentMethodSave = node.getEnumValue<
            SessionsPostRequestBodySavedPaymentMethodOptionsPaymentMethodSave>(
        (stringValue) =>
            SessionsPostRequestBodySavedPaymentMethodOptionsPaymentMethodSave
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
            SessionsPostRequestBodySavedPaymentMethodOptionsAllowRedisplayFilters>(
        'allow_redisplay_filters', allowRedisplayFilters, (e) => e?.value);
    writer.writeEnumValue<
            SessionsPostRequestBodySavedPaymentMethodOptionsPaymentMethodRemove>(
        'payment_method_remove', paymentMethodRemove, (e) => e?.value);
    writer.writeEnumValue<
            SessionsPostRequestBodySavedPaymentMethodOptionsPaymentMethodSave>(
        'payment_method_save', paymentMethodSave, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
