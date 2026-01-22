// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_card_member1_capture_method.dart';
import './payment_intents_post_request_body_payment_method_options_card_member1_installments.dart';
import './payment_intents_post_request_body_payment_method_options_card_member1_mandate_options.dart';
import './payment_intents_post_request_body_payment_method_options_card_member1_network.dart';
import './payment_intents_post_request_body_payment_method_options_card_member1_request_extended_authorization.dart';
import './payment_intents_post_request_body_payment_method_options_card_member1_request_incremental_authorization.dart';
import './payment_intents_post_request_body_payment_method_options_card_member1_request_multicapture.dart';
import './payment_intents_post_request_body_payment_method_options_card_member1_request_overcapture.dart';
import './payment_intents_post_request_body_payment_method_options_card_member1_request_three_d_secure.dart';
import './payment_intents_post_request_body_payment_method_options_card_member1_setup_future_usage.dart';
import './payment_intents_post_request_body_payment_method_options_card_member1_statement_descriptor_suffix_kana.dart';
import './payment_intents_post_request_body_payment_method_options_card_member1_statement_descriptor_suffix_kanji.dart';
import './payment_intents_post_request_body_payment_method_options_card_member1_three_d_secure.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1CaptureMethod?
      captureMethod;

  ///  The cvc_token property
  String? cvcToken;

  ///  The installments property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1Installments?
      installments;

  ///  The mandate_options property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions?
      mandateOptions;

  ///  The network property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1Network? network;

  ///  The request_extended_authorization property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestExtendedAuthorization?
      requestExtendedAuthorization;

  ///  The request_incremental_authorization property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestIncrementalAuthorization?
      requestIncrementalAuthorization;

  ///  The request_multicapture property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestMulticapture?
      requestMulticapture;

  ///  The request_overcapture property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestOvercapture?
      requestOvercapture;

  ///  The request_three_d_secure property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestThreeDSecure?
      requestThreeDSecure;

  ///  The require_cvc_recollection property
  bool? requireCvcRecollection;

  ///  The setup_future_usage property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1SetupFutureUsage?
      setupFutureUsage;

  ///  The statement_descriptor_suffix_kana property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKana?
      statementDescriptorSuffixKana;

  ///  The statement_descriptor_suffix_kanji property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKanji?
      statementDescriptorSuffixKanji;

  ///  The three_d_secure property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure?
      threeDSecure;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1CaptureMethod>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1CaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['cvc_token'] = (node) => cvcToken = node.getStringValue();
    deserializerMap[
        'installments'] = (node) => installments = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1Installments>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1Installments
            .createFromDiscriminatorValue);
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions
            .createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1Network>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1Network
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['request_extended_authorization'] = (node) =>
        requestExtendedAuthorization = node.getEnumValue<
                PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestExtendedAuthorization>(
            (stringValue) =>
                PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestExtendedAuthorization
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['request_incremental_authorization'] = (node) =>
        requestIncrementalAuthorization = node.getEnumValue<
                PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestIncrementalAuthorization>(
            (stringValue) =>
                PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestIncrementalAuthorization
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'request_multicapture'] = (node) => requestMulticapture = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestMulticapture>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestMulticapture
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'request_overcapture'] = (node) => requestOvercapture = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestOvercapture>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestOvercapture
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'request_three_d_secure'] = (node) => requestThreeDSecure = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestThreeDSecure>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestThreeDSecure
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['require_cvc_recollection'] =
        (node) => requireCvcRecollection = node.getBoolValue();
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1SetupFutureUsage>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['statement_descriptor_suffix_kana'] = (node) =>
        statementDescriptorSuffixKana = node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKana>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKana
                .createFromDiscriminatorValue);
    deserializerMap['statement_descriptor_suffix_kanji'] = (node) =>
        statementDescriptorSuffixKanji = node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKanji>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKanji
                .createFromDiscriminatorValue);
    deserializerMap[
        'three_d_secure'] = (node) => threeDSecure = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeStringValue('cvc_token', cvcToken);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1Installments>(
        'installments', installments);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1Network>(
        'network', network, (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestExtendedAuthorization>(
        'request_extended_authorization',
        requestExtendedAuthorization,
        (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestIncrementalAuthorization>(
        'request_incremental_authorization',
        requestIncrementalAuthorization,
        (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestMulticapture>(
        'request_multicapture', requestMulticapture, (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestOvercapture>(
        'request_overcapture', requestOvercapture, (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1RequestThreeDSecure>(
        'request_three_d_secure', requestThreeDSecure, (e) => e?.value);
    writer.writeBoolValue('require_cvc_recollection',
        value: requireCvcRecollection);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKana>(
        'statement_descriptor_suffix_kana', statementDescriptorSuffixKana);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKanji>(
        'statement_descriptor_suffix_kanji', statementDescriptorSuffixKanji);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure>(
        'three_d_secure', threeDSecure);
    writer.writeAdditionalData(additionalData);
  }
}
