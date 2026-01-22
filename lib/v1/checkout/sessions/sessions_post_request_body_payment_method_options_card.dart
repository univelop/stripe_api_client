// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_card_capture_method.dart';
import './sessions_post_request_body_payment_method_options_card_installments.dart';
import './sessions_post_request_body_payment_method_options_card_request_extended_authorization.dart';
import './sessions_post_request_body_payment_method_options_card_request_incremental_authorization.dart';
import './sessions_post_request_body_payment_method_options_card_request_multicapture.dart';
import './sessions_post_request_body_payment_method_options_card_request_overcapture.dart';
import './sessions_post_request_body_payment_method_options_card_request_three_d_secure.dart';
import './sessions_post_request_body_payment_method_options_card_restrictions.dart';
import './sessions_post_request_body_payment_method_options_card_setup_future_usage.dart';

/// auto generated
class SessionsPostRequestBodyPaymentMethodOptionsCard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  SessionsPostRequestBodyPaymentMethodOptionsCardCaptureMethod? captureMethod;

  ///  The installments property
  SessionsPostRequestBodyPaymentMethodOptionsCardInstallments? installments;

  ///  The request_extended_authorization property
  SessionsPostRequestBodyPaymentMethodOptionsCardRequestExtendedAuthorization?
      requestExtendedAuthorization;

  ///  The request_incremental_authorization property
  SessionsPostRequestBodyPaymentMethodOptionsCardRequestIncrementalAuthorization?
      requestIncrementalAuthorization;

  ///  The request_multicapture property
  SessionsPostRequestBodyPaymentMethodOptionsCardRequestMulticapture?
      requestMulticapture;

  ///  The request_overcapture property
  SessionsPostRequestBodyPaymentMethodOptionsCardRequestOvercapture?
      requestOvercapture;

  ///  The request_three_d_secure property
  SessionsPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure?
      requestThreeDSecure;

  ///  The restrictions property
  SessionsPostRequestBodyPaymentMethodOptionsCardRestrictions? restrictions;

  ///  The setup_future_usage property
  SessionsPostRequestBodyPaymentMethodOptionsCardSetupFutureUsage?
      setupFutureUsage;

  ///  The statement_descriptor_suffix_kana property
  String? statementDescriptorSuffixKana;

  ///  The statement_descriptor_suffix_kanji property
  String? statementDescriptorSuffixKanji;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptionsCard] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptionsCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsCard
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptionsCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['capture_method'] = (node) => captureMethod =
        node.getEnumValue<
                SessionsPostRequestBodyPaymentMethodOptionsCardCaptureMethod>(
            (stringValue) =>
                SessionsPostRequestBodyPaymentMethodOptionsCardCaptureMethod
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['installments'] = (node) => installments =
        node.getObjectValue<
                SessionsPostRequestBodyPaymentMethodOptionsCardInstallments>(
            SessionsPostRequestBodyPaymentMethodOptionsCardInstallments
                .createFromDiscriminatorValue);
    deserializerMap['request_extended_authorization'] = (node) =>
        requestExtendedAuthorization = node.getEnumValue<
                SessionsPostRequestBodyPaymentMethodOptionsCardRequestExtendedAuthorization>(
            (stringValue) =>
                SessionsPostRequestBodyPaymentMethodOptionsCardRequestExtendedAuthorization
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['request_incremental_authorization'] = (node) =>
        requestIncrementalAuthorization = node.getEnumValue<
                SessionsPostRequestBodyPaymentMethodOptionsCardRequestIncrementalAuthorization>(
            (stringValue) =>
                SessionsPostRequestBodyPaymentMethodOptionsCardRequestIncrementalAuthorization
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'request_multicapture'] = (node) => requestMulticapture = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCardRequestMulticapture>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsCardRequestMulticapture
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'request_overcapture'] = (node) => requestOvercapture = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCardRequestOvercapture>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsCardRequestOvercapture
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['request_three_d_secure'] = (node) => requestThreeDSecure =
        node.getEnumValue<
                SessionsPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure>(
            (stringValue) =>
                SessionsPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['restrictions'] = (node) => restrictions =
        node.getObjectValue<
                SessionsPostRequestBodyPaymentMethodOptionsCardRestrictions>(
            SessionsPostRequestBodyPaymentMethodOptionsCardRestrictions
                .createFromDiscriminatorValue);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCardSetupFutureUsage>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsCardSetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['statement_descriptor_suffix_kana'] =
        (node) => statementDescriptorSuffixKana = node.getStringValue();
    deserializerMap['statement_descriptor_suffix_kanji'] =
        (node) => statementDescriptorSuffixKanji = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCardCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsCardInstallments>(
        'installments', installments);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCardRequestExtendedAuthorization>(
        'request_extended_authorization',
        requestExtendedAuthorization,
        (e) => e?.value);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCardRequestIncrementalAuthorization>(
        'request_incremental_authorization',
        requestIncrementalAuthorization,
        (e) => e?.value);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCardRequestMulticapture>(
        'request_multicapture', requestMulticapture, (e) => e?.value);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCardRequestOvercapture>(
        'request_overcapture', requestOvercapture, (e) => e?.value);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure>(
        'request_three_d_secure', requestThreeDSecure, (e) => e?.value);
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsCardRestrictions>(
        'restrictions', restrictions);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCardSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue(
        'statement_descriptor_suffix_kana', statementDescriptorSuffixKana);
    writer.writeStringValue(
        'statement_descriptor_suffix_kanji', statementDescriptorSuffixKanji);
    writer.writeAdditionalData(additionalData);
  }
}
