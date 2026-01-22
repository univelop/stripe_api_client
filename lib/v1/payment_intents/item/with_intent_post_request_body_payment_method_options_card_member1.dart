// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_capture_method.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_installments.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_mandate_options.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_network.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_request_extended_authorization.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_request_incremental_authorization.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_request_multicapture.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_request_overcapture.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_request_three_d_secure.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_setup_future_usage.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_statement_descriptor_suffix_kana.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_statement_descriptor_suffix_kanji.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_three_d_secure.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsCardMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1CaptureMethod?
      captureMethod;

  ///  The cvc_token property
  String? cvcToken;

  ///  The installments property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1Installments?
      installments;

  ///  The mandate_options property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions?
      mandateOptions;

  ///  The network property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1Network? network;

  ///  The request_extended_authorization property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestExtendedAuthorization?
      requestExtendedAuthorization;

  ///  The request_incremental_authorization property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestIncrementalAuthorization?
      requestIncrementalAuthorization;

  ///  The request_multicapture property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestMulticapture?
      requestMulticapture;

  ///  The request_overcapture property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestOvercapture?
      requestOvercapture;

  ///  The request_three_d_secure property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestThreeDSecure?
      requestThreeDSecure;

  ///  The require_cvc_recollection property
  bool? requireCvcRecollection;

  ///  The setup_future_usage property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1SetupFutureUsage?
      setupFutureUsage;

  ///  The statement_descriptor_suffix_kana property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKana?
      statementDescriptorSuffixKana;

  ///  The statement_descriptor_suffix_kanji property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKanji?
      statementDescriptorSuffixKanji;

  ///  The three_d_secure property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure?
      threeDSecure;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsCardMember1] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsCardMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsCardMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1CaptureMethod>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1CaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['cvc_token'] = (node) => cvcToken = node.getStringValue();
    deserializerMap[
        'installments'] = (node) => installments = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1Installments>(
        WithIntentPostRequestBodyPaymentMethodOptionsCardMember1Installments
            .createFromDiscriminatorValue);
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions>(
        WithIntentPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions
            .createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1Network>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1Network
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['request_extended_authorization'] = (node) =>
        requestExtendedAuthorization = node.getEnumValue<
                WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestExtendedAuthorization>(
            (stringValue) =>
                WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestExtendedAuthorization
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['request_incremental_authorization'] = (node) =>
        requestIncrementalAuthorization = node.getEnumValue<
                WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestIncrementalAuthorization>(
            (stringValue) =>
                WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestIncrementalAuthorization
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'request_multicapture'] = (node) => requestMulticapture = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestMulticapture>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestMulticapture
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'request_overcapture'] = (node) => requestOvercapture = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestOvercapture>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestOvercapture
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'request_three_d_secure'] = (node) => requestThreeDSecure = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestThreeDSecure>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestThreeDSecure
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['require_cvc_recollection'] =
        (node) => requireCvcRecollection = node.getBoolValue();
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1SetupFutureUsage>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['statement_descriptor_suffix_kana'] = (node) =>
        statementDescriptorSuffixKana = node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKana>(
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKana
                .createFromDiscriminatorValue);
    deserializerMap['statement_descriptor_suffix_kanji'] = (node) =>
        statementDescriptorSuffixKanji = node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKanji>(
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKanji
                .createFromDiscriminatorValue);
    deserializerMap[
        'three_d_secure'] = (node) => threeDSecure = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure>(
        WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeStringValue('cvc_token', cvcToken);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1Installments>(
        'installments', installments);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1Network>(
        'network', network, (e) => e?.value);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestExtendedAuthorization>(
        'request_extended_authorization',
        requestExtendedAuthorization,
        (e) => e?.value);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestIncrementalAuthorization>(
        'request_incremental_authorization',
        requestIncrementalAuthorization,
        (e) => e?.value);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestMulticapture>(
        'request_multicapture', requestMulticapture, (e) => e?.value);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestOvercapture>(
        'request_overcapture', requestOvercapture, (e) => e?.value);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1RequestThreeDSecure>(
        'request_three_d_secure', requestThreeDSecure, (e) => e?.value);
    writer.writeBoolValue('require_cvc_recollection',
        value: requireCvcRecollection);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKana>(
        'statement_descriptor_suffix_kana', statementDescriptorSuffixKana);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKanji>(
        'statement_descriptor_suffix_kanji', statementDescriptorSuffixKanji);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure>(
        'three_d_secure', threeDSecure);
    writer.writeAdditionalData(additionalData);
  }
}
