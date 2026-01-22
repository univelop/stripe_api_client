// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './portal_customer_update.dart';
import './portal_invoice_list.dart';
import './portal_payment_method_update.dart';
import './portal_subscription_cancel.dart';
import './portal_subscription_update.dart';

/// auto generated
class PortalFeatures implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer_update property
  PortalCustomerUpdate? customerUpdate;

  ///  The invoice_history property
  PortalInvoiceList? invoiceHistory;

  ///  The payment_method_update property
  PortalPaymentMethodUpdate? paymentMethodUpdate;

  ///  The subscription_cancel property
  PortalSubscriptionCancel? subscriptionCancel;

  ///  The subscription_update property
  PortalSubscriptionUpdate? subscriptionUpdate;

  /// Instantiates a new [PortalFeatures] and sets the default values.
  PortalFeatures() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalFeatures createFromDiscriminatorValue(ParseNode parseNode) {
    return PortalFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer_update'] = (node) => customerUpdate =
        node.getObjectValue<PortalCustomerUpdate>(
            PortalCustomerUpdate.createFromDiscriminatorValue);
    deserializerMap['invoice_history'] = (node) => invoiceHistory =
        node.getObjectValue<PortalInvoiceList>(
            PortalInvoiceList.createFromDiscriminatorValue);
    deserializerMap['payment_method_update'] = (node) => paymentMethodUpdate =
        node.getObjectValue<PortalPaymentMethodUpdate>(
            PortalPaymentMethodUpdate.createFromDiscriminatorValue);
    deserializerMap['subscription_cancel'] = (node) => subscriptionCancel =
        node.getObjectValue<PortalSubscriptionCancel>(
            PortalSubscriptionCancel.createFromDiscriminatorValue);
    deserializerMap['subscription_update'] = (node) => subscriptionUpdate =
        node.getObjectValue<PortalSubscriptionUpdate>(
            PortalSubscriptionUpdate.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PortalCustomerUpdate>(
        'customer_update', customerUpdate);
    writer.writeObjectValue<PortalInvoiceList>(
        'invoice_history', invoiceHistory);
    writer.writeObjectValue<PortalPaymentMethodUpdate>(
        'payment_method_update', paymentMethodUpdate);
    writer.writeObjectValue<PortalSubscriptionCancel>(
        'subscription_cancel', subscriptionCancel);
    writer.writeObjectValue<PortalSubscriptionUpdate>(
        'subscription_update', subscriptionUpdate);
    writer.writeAdditionalData(additionalData);
  }
}
