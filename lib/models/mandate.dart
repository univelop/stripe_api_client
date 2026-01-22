// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_acceptance.dart';
import './mandate_multi_use.dart';
import './mandate_object.dart';
import './mandate_payment_method.dart';
import './mandate_payment_method_details.dart';
import './mandate_single_use.dart';
import './mandate_status.dart';
import './mandate_type.dart';

/// auto generated
/// A Mandate is a record of the permission that your customer gives you to debit their payment method.
class Mandate implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer_acceptance property
  CustomerAcceptance? customerAcceptance;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The multi_use property
  MandateMultiUse? multiUse;

  ///  String representing the object's type. Objects of the same type share the same value.
  MandateObject? object;

  ///  The account (if any) that the mandate is intended for.
  String? onBehalfOf;

  ///  ID of the payment method associated with this mandate.
  MandatePaymentMethod? paymentMethod;

  ///  The payment_method_details property
  MandatePaymentMethodDetails? paymentMethodDetails;

  ///  The single_use property
  MandateSingleUse? singleUse;

  ///  The mandate status indicates whether or not you can use it to initiate a payment.
  MandateStatus? status;

  ///  The type of the mandate.
  MandateType? type_;

  /// Instantiates a new [Mandate] and sets the default values.
  Mandate() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Mandate createFromDiscriminatorValue(ParseNode parseNode) {
    return Mandate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer_acceptance'] = (node) => customerAcceptance =
        node.getObjectValue<CustomerAcceptance>(
            CustomerAcceptance.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['multi_use'] = (node) => multiUse =
        node.getObjectValue<MandateMultiUse>(
            MandateMultiUse.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<MandateObject>((stringValue) => MandateObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    deserializerMap['payment_method'] = (node) => paymentMethod =
        node.getObjectValue<MandatePaymentMethod>(
            MandatePaymentMethod.createFromDiscriminatorValue);
    deserializerMap['payment_method_details'] = (node) => paymentMethodDetails =
        node.getObjectValue<MandatePaymentMethodDetails>(
            MandatePaymentMethodDetails.createFromDiscriminatorValue);
    deserializerMap['single_use'] = (node) => singleUse =
        node.getObjectValue<MandateSingleUse>(
            MandateSingleUse.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<MandateStatus>((stringValue) => MandateStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<MandateType>(
        (stringValue) => MandateType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CustomerAcceptance>(
        'customer_acceptance', customerAcceptance);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<MandateMultiUse>('multi_use', multiUse);
    writer.writeEnumValue<MandateObject>('object', object, (e) => e?.value);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
    writer.writeObjectValue<MandatePaymentMethod>(
        'payment_method', paymentMethod);
    writer.writeObjectValue<MandatePaymentMethodDetails>(
        'payment_method_details', paymentMethodDetails);
    writer.writeObjectValue<MandateSingleUse>('single_use', singleUse);
    writer.writeEnumValue<MandateStatus>('status', status, (e) => e?.value);
    writer.writeEnumValue<MandateType>('type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
