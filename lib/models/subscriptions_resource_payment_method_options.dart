// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_payment_method_options_acss_debit.dart';
import './invoice_payment_method_options_bancontact.dart';
import './invoice_payment_method_options_customer_balance.dart';
import './invoice_payment_method_options_konbini.dart';
import './invoice_payment_method_options_payto.dart';
import './invoice_payment_method_options_sepa_debit.dart';
import './invoice_payment_method_options_us_bank_account.dart';
import './subscription_payment_method_options_card.dart';

/// auto generated
class SubscriptionsResourcePaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  This sub-hash contains details about the Canadian pre-authorized debit payment method options to pass to invoices created by the subscription.
  InvoicePaymentMethodOptionsAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  This sub-hash contains details about the Bancontact payment method options to pass to invoices created by the subscription.
  InvoicePaymentMethodOptionsBancontact? bancontact;

  ///  This sub-hash contains details about the Card payment method options to pass to invoices created by the subscription.
  SubscriptionPaymentMethodOptionsCard? card;

  ///  This sub-hash contains details about the Bank transfer payment method options to pass to invoices created by the subscription.
  InvoicePaymentMethodOptionsCustomerBalance? customerBalance;

  ///  This sub-hash contains details about the Konbini payment method options to pass to invoices created by the subscription.
  InvoicePaymentMethodOptionsKonbini? konbini;

  ///  This sub-hash contains details about the PayTo payment method options to pass to invoices created by the subscription.
  InvoicePaymentMethodOptionsPayto? payto;

  ///  This sub-hash contains details about the SEPA Direct Debit payment method options to pass to invoices created by the subscription.
  InvoicePaymentMethodOptionsSepaDebit? sepaDebit;

  ///  This sub-hash contains details about the ACH direct debit payment method options to pass to invoices created by the subscription.
  InvoicePaymentMethodOptionsUsBankAccount? usBankAccount;

  /// Instantiates a new [SubscriptionsResourcePaymentMethodOptions] and sets the default values.
  SubscriptionsResourcePaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsResourcePaymentMethodOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionsResourcePaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit =
        node.getObjectValue<InvoicePaymentMethodOptionsAcssDebit>(
            InvoicePaymentMethodOptionsAcssDebit.createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact =
        node.getObjectValue<InvoicePaymentMethodOptionsBancontact>(
            InvoicePaymentMethodOptionsBancontact.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<SubscriptionPaymentMethodOptionsCard>(
            SubscriptionPaymentMethodOptionsCard.createFromDiscriminatorValue);
    deserializerMap['customer_balance'] = (node) => customerBalance =
        node.getObjectValue<InvoicePaymentMethodOptionsCustomerBalance>(
            InvoicePaymentMethodOptionsCustomerBalance
                .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini =
        node.getObjectValue<InvoicePaymentMethodOptionsKonbini>(
            InvoicePaymentMethodOptionsKonbini.createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<InvoicePaymentMethodOptionsPayto>(
            InvoicePaymentMethodOptionsPayto.createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit =
        node.getObjectValue<InvoicePaymentMethodOptionsSepaDebit>(
            InvoicePaymentMethodOptionsSepaDebit.createFromDiscriminatorValue);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<InvoicePaymentMethodOptionsUsBankAccount>(
            InvoicePaymentMethodOptionsUsBankAccount
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<InvoicePaymentMethodOptionsAcssDebit>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<InvoicePaymentMethodOptionsBancontact>(
        'bancontact', bancontact);
    writer.writeObjectValue<SubscriptionPaymentMethodOptionsCard>('card', card);
    writer.writeObjectValue<InvoicePaymentMethodOptionsCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<InvoicePaymentMethodOptionsKonbini>(
        'konbini', konbini);
    writer.writeObjectValue<InvoicePaymentMethodOptionsPayto>('payto', payto);
    writer.writeObjectValue<InvoicePaymentMethodOptionsSepaDebit>(
        'sepa_debit', sepaDebit);
    writer.writeObjectValue<InvoicePaymentMethodOptionsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
