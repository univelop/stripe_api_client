// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_record_customer_presence.dart';
import './payment_record_metadata.dart';
import './payment_record_object.dart';
import './payment_record_reported_by.dart';
import './payments_primitives_payment_records_resource_amount.dart';
import './payments_primitives_payment_records_resource_customer_details.dart';
import './payments_primitives_payment_records_resource_payment_method_details.dart';
import './payments_primitives_payment_records_resource_processor_details.dart';
import './payments_primitives_payment_records_resource_shipping_details.dart';

/// auto generated
/// A Payment Record is a resource that allows you to represent payments that occur on- or off-Stripe.For example, you can create a Payment Record to model a payment made on a different payment processor,in order to mark an Invoice as paid and a Subscription as active. Payment Records consist of one ormore Payment Attempt Records, which represent individual attempts made on a payment network.
class PaymentRecord implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A representation of an amount of money, consisting of an amount and a currency.
  PaymentsPrimitivesPaymentRecordsResourceAmount? amount;

  ///  A representation of an amount of money, consisting of an amount and a currency.
  PaymentsPrimitivesPaymentRecordsResourceAmount? amountAuthorized;

  ///  A representation of an amount of money, consisting of an amount and a currency.
  PaymentsPrimitivesPaymentRecordsResourceAmount? amountCanceled;

  ///  A representation of an amount of money, consisting of an amount and a currency.
  PaymentsPrimitivesPaymentRecordsResourceAmount? amountFailed;

  ///  A representation of an amount of money, consisting of an amount and a currency.
  PaymentsPrimitivesPaymentRecordsResourceAmount? amountGuaranteed;

  ///  A representation of an amount of money, consisting of an amount and a currency.
  PaymentsPrimitivesPaymentRecordsResourceAmount? amountRefunded;

  ///  A representation of an amount of money, consisting of an amount and a currency.
  PaymentsPrimitivesPaymentRecordsResourceAmount? amountRequested;

  ///  ID of the Connect application that created the PaymentRecord.
  String? application;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Customer information for this payment.
  PaymentsPrimitivesPaymentRecordsResourceCustomerDetails? customerDetails;

  ///  Indicates whether the customer was present in your checkout flow during this payment.
  PaymentRecordCustomerPresence? customerPresence;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Unique identifier for the object.
  String? id;

  ///  ID of the latest Payment Attempt Record attached to this Payment Record.
  String? latestPaymentAttemptRecord;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  PaymentRecordMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  PaymentRecordObject? object;

  ///  Information about the Payment Method debited for this payment.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails?
      paymentMethodDetails;

  ///  Processor information associated with this payment.
  PaymentsPrimitivesPaymentRecordsResourceProcessorDetails? processorDetails;

  ///  Indicates who reported the payment.
  PaymentRecordReportedBy? reportedBy;

  ///  Shipping information for this payment.
  PaymentsPrimitivesPaymentRecordsResourceShippingDetails? shippingDetails;

  /// Instantiates a new [PaymentRecord] and sets the default values.
  PaymentRecord() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentRecord createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentRecord();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount =
        node.getObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
            PaymentsPrimitivesPaymentRecordsResourceAmount
                .createFromDiscriminatorValue);
    deserializerMap['amount_authorized'] = (node) => amountAuthorized =
        node.getObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
            PaymentsPrimitivesPaymentRecordsResourceAmount
                .createFromDiscriminatorValue);
    deserializerMap['amount_canceled'] = (node) => amountCanceled =
        node.getObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
            PaymentsPrimitivesPaymentRecordsResourceAmount
                .createFromDiscriminatorValue);
    deserializerMap['amount_failed'] = (node) => amountFailed =
        node.getObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
            PaymentsPrimitivesPaymentRecordsResourceAmount
                .createFromDiscriminatorValue);
    deserializerMap['amount_guaranteed'] = (node) => amountGuaranteed =
        node.getObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
            PaymentsPrimitivesPaymentRecordsResourceAmount
                .createFromDiscriminatorValue);
    deserializerMap['amount_refunded'] = (node) => amountRefunded =
        node.getObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
            PaymentsPrimitivesPaymentRecordsResourceAmount
                .createFromDiscriminatorValue);
    deserializerMap['amount_requested'] = (node) => amountRequested =
        node.getObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
            PaymentsPrimitivesPaymentRecordsResourceAmount
                .createFromDiscriminatorValue);
    deserializerMap['application'] =
        (node) => application = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['customer_details'] = (node) => customerDetails =
        node.getObjectValue<
                PaymentsPrimitivesPaymentRecordsResourceCustomerDetails>(
            PaymentsPrimitivesPaymentRecordsResourceCustomerDetails
                .createFromDiscriminatorValue);
    deserializerMap['customer_presence'] = (node) => customerPresence =
        node.getEnumValue<PaymentRecordCustomerPresence>((stringValue) =>
            PaymentRecordCustomerPresence.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['latest_payment_attempt_record'] =
        (node) => latestPaymentAttemptRecord = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PaymentRecordMetadata>(
            PaymentRecordMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PaymentRecordObject>((stringValue) =>
            PaymentRecordObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment_method_details'] = (node) => paymentMethodDetails =
        node.getObjectValue<
                PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails>(
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails
                .createFromDiscriminatorValue);
    deserializerMap['processor_details'] = (node) => processorDetails =
        node.getObjectValue<
                PaymentsPrimitivesPaymentRecordsResourceProcessorDetails>(
            PaymentsPrimitivesPaymentRecordsResourceProcessorDetails
                .createFromDiscriminatorValue);
    deserializerMap['reported_by'] = (node) => reportedBy =
        node.getEnumValue<PaymentRecordReportedBy>((stringValue) =>
            PaymentRecordReportedBy.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['shipping_details'] = (node) => shippingDetails =
        node.getObjectValue<
                PaymentsPrimitivesPaymentRecordsResourceShippingDetails>(
            PaymentsPrimitivesPaymentRecordsResourceShippingDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
        'amount', amount);
    writer.writeObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
        'amount_authorized', amountAuthorized);
    writer.writeObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
        'amount_canceled', amountCanceled);
    writer.writeObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
        'amount_failed', amountFailed);
    writer.writeObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
        'amount_guaranteed', amountGuaranteed);
    writer.writeObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
        'amount_refunded', amountRefunded);
    writer.writeObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
        'amount_requested', amountRequested);
    writer.writeStringValue('application', application);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourceCustomerDetails>(
        'customer_details', customerDetails);
    writer.writeEnumValue<PaymentRecordCustomerPresence>(
        'customer_presence', customerPresence, (e) => e?.value);
    writer.writeStringValue('description', description);
    writer.writeStringValue('id', id);
    writer.writeStringValue(
        'latest_payment_attempt_record', latestPaymentAttemptRecord);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<PaymentRecordMetadata>('metadata', metadata);
    writer.writeEnumValue<PaymentRecordObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails>(
        'payment_method_details', paymentMethodDetails);
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourceProcessorDetails>(
        'processor_details', processorDetails);
    writer.writeEnumValue<PaymentRecordReportedBy>(
        'reported_by', reportedBy, (e) => e?.value);
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourceShippingDetails>(
        'shipping_details', shippingDetails);
    writer.writeAdditionalData(additionalData);
  }
}
