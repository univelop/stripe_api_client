// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_card_member1_capture_method.dart';
import './confirm_post_request_body_payment_method_options_card_member1_installments.dart';
import './confirm_post_request_body_payment_method_options_card_member1_mandate_options.dart';
import './confirm_post_request_body_payment_method_options_card_member1_network.dart';
import './confirm_post_request_body_payment_method_options_card_member1_request_extended_authorization.dart';
import './confirm_post_request_body_payment_method_options_card_member1_request_incremental_authorization.dart';
import './confirm_post_request_body_payment_method_options_card_member1_request_multicapture.dart';
import './confirm_post_request_body_payment_method_options_card_member1_request_overcapture.dart';
import './confirm_post_request_body_payment_method_options_card_member1_request_three_d_secure.dart';
import './confirm_post_request_body_payment_method_options_card_member1_setup_future_usage.dart';
import './confirm_post_request_body_payment_method_options_card_member1_statement_descriptor_suffix_kana.dart';
import './confirm_post_request_body_payment_method_options_card_member1_statement_descriptor_suffix_kanji.dart';
import './confirm_post_request_body_payment_method_options_card_member1_three_d_secure.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsCardMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1CaptureMethod?
      captureMethod;

  ///  The cvc_token property
  String? cvcToken;

  ///  The installments property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1Installments?
      installments;

  ///  The mandate_options property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions?
      mandateOptions;

  ///  The network property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1Network? network;

  ///  The request_extended_authorization property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestExtendedAuthorization?
      requestExtendedAuthorization;

  ///  The request_incremental_authorization property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestIncrementalAuthorization?
      requestIncrementalAuthorization;

  ///  The request_multicapture property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestMulticapture?
      requestMulticapture;

  ///  The request_overcapture property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestOvercapture?
      requestOvercapture;

  ///  The request_three_d_secure property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestThreeDSecure?
      requestThreeDSecure;

  ///  The require_cvc_recollection property
  bool? requireCvcRecollection;

  ///  The setup_future_usage property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1SetupFutureUsage?
      setupFutureUsage;

  ///  The statement_descriptor_suffix_kana property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKana?
      statementDescriptorSuffixKana;

  ///  The statement_descriptor_suffix_kanji property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKanji?
      statementDescriptorSuffixKanji;

  ///  The three_d_secure property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure?
      threeDSecure;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsCardMember1] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsCardMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsCardMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1CaptureMethod>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1CaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['cvc_token'] = (node) => cvcToken = node.getStringValue();
    deserializerMap[
        'installments'] = (node) => installments = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1Installments>(
        ConfirmPostRequestBodyPaymentMethodOptionsCardMember1Installments
            .createFromDiscriminatorValue);
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions>(
        ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions
            .createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1Network>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1Network.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['request_extended_authorization'] = (node) =>
        requestExtendedAuthorization = node.getEnumValue<
                ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestExtendedAuthorization>(
            (stringValue) =>
                ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestExtendedAuthorization
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['request_incremental_authorization'] = (node) =>
        requestIncrementalAuthorization = node.getEnumValue<
                ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestIncrementalAuthorization>(
            (stringValue) =>
                ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestIncrementalAuthorization
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'request_multicapture'] = (node) => requestMulticapture = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestMulticapture>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestMulticapture
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'request_overcapture'] = (node) => requestOvercapture = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestOvercapture>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestOvercapture
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'request_three_d_secure'] = (node) => requestThreeDSecure = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestThreeDSecure>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestThreeDSecure
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['require_cvc_recollection'] =
        (node) => requireCvcRecollection = node.getBoolValue();
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1SetupFutureUsage>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['statement_descriptor_suffix_kana'] = (node) =>
        statementDescriptorSuffixKana = node.getObjectValue<
                ConfirmPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKana>(
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKana
                .createFromDiscriminatorValue);
    deserializerMap['statement_descriptor_suffix_kanji'] = (node) =>
        statementDescriptorSuffixKanji = node.getObjectValue<
                ConfirmPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKanji>(
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKanji
                .createFromDiscriminatorValue);
    deserializerMap[
        'three_d_secure'] = (node) => threeDSecure = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure>(
        ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeStringValue('cvc_token', cvcToken);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1Installments>(
        'installments', installments);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1Network>(
        'network', network, (e) => e?.value);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestExtendedAuthorization>(
        'request_extended_authorization',
        requestExtendedAuthorization,
        (e) => e?.value);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestIncrementalAuthorization>(
        'request_incremental_authorization',
        requestIncrementalAuthorization,
        (e) => e?.value);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestMulticapture>(
        'request_multicapture', requestMulticapture, (e) => e?.value);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestOvercapture>(
        'request_overcapture', requestOvercapture, (e) => e?.value);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1RequestThreeDSecure>(
        'request_three_d_secure', requestThreeDSecure, (e) => e?.value);
    writer.writeBoolValue('require_cvc_recollection',
        value: requireCvcRecollection);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKana>(
        'statement_descriptor_suffix_kana', statementDescriptorSuffixKana);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1StatementDescriptorSuffixKanji>(
        'statement_descriptor_suffix_kanji', statementDescriptorSuffixKanji);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure>(
        'three_d_secure', threeDSecure);
    writer.writeAdditionalData(additionalData);
  }
}
