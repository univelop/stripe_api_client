// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_bill_resource_invoicing_taxes_tax_rate_details.dart';
import './billing_bill_resource_invoicing_taxes_tax_tax_behavior.dart';
import './billing_bill_resource_invoicing_taxes_tax_taxability_reason.dart';
import './billing_bill_resource_invoicing_taxes_tax_type.dart';

/// auto generated
class BillingBillResourceInvoicingTaxesTax
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount of the tax, in cents (or local equivalent).
  int? amount;

  ///  The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
  BillingBillResourceInvoicingTaxesTaxTaxabilityReason? taxabilityReason;

  ///  The amount on which tax is calculated, in cents (or local equivalent).
  int? taxableAmount;

  ///  Whether this tax is inclusive or exclusive.
  BillingBillResourceInvoicingTaxesTaxTaxBehavior? taxBehavior;

  ///  Additional details about the tax rate. Only present when `type` is `tax_rate_details`.
  BillingBillResourceInvoicingTaxesTaxRateDetails? taxRateDetails;

  ///  The type of tax information.
  BillingBillResourceInvoicingTaxesTaxType? type_;

  /// Instantiates a new [BillingBillResourceInvoicingTaxesTax] and sets the default values.
  BillingBillResourceInvoicingTaxesTax() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingBillResourceInvoicingTaxesTax createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BillingBillResourceInvoicingTaxesTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['taxability_reason'] = (node) => taxabilityReason =
        node.getEnumValue<BillingBillResourceInvoicingTaxesTaxTaxabilityReason>(
            (stringValue) =>
                BillingBillResourceInvoicingTaxesTaxTaxabilityReason.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['taxable_amount'] =
        (node) => taxableAmount = node.getIntValue();
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<BillingBillResourceInvoicingTaxesTaxTaxBehavior>(
            (stringValue) => BillingBillResourceInvoicingTaxesTaxTaxBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_rate_details'] = (node) => taxRateDetails =
        node.getObjectValue<BillingBillResourceInvoicingTaxesTaxRateDetails>(
            BillingBillResourceInvoicingTaxesTaxRateDetails
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<BillingBillResourceInvoicingTaxesTaxType>(
            (stringValue) => BillingBillResourceInvoicingTaxesTaxType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeEnumValue<BillingBillResourceInvoicingTaxesTaxTaxabilityReason>(
        'taxability_reason', taxabilityReason, (e) => e?.value);
    writer.writeIntValue('taxable_amount', taxableAmount);
    writer.writeEnumValue<BillingBillResourceInvoicingTaxesTaxTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeObjectValue<BillingBillResourceInvoicingTaxesTaxRateDetails>(
        'tax_rate_details', taxRateDetails);
    writer.writeEnumValue<BillingBillResourceInvoicingTaxesTaxType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
