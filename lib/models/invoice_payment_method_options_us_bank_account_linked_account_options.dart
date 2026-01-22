// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_payment_method_options_us_bank_account_linked_account_options_filters.dart';
import './invoice_payment_method_options_us_bank_account_linked_account_options_permissions.dart';
import './invoice_payment_method_options_us_bank_account_linked_account_options_prefetch.dart';

/// auto generated
class InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The filters property
  InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsFilters? filters;

  ///  The list of permissions to request. The `payment_method` permission must be included.
  Iterable<
          InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions>?
      permissions;

  ///  Data features requested to be retrieved upon account creation.
  Iterable<
          InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch>?
      prefetch;

  /// Instantiates a new [InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions] and sets the default values.
  InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['filters'] = (node) => filters = node.getObjectValue<
            InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsFilters>(
        InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsFilters
            .createFromDiscriminatorValue);
    deserializerMap[
        'permissions'] = (node) => permissions = node.getCollectionOfEnumValues<
            InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions>(
        (stringValue) =>
            InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'prefetch'] = (node) => prefetch = node.getCollectionOfEnumValues<
            InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch>(
        (stringValue) =>
            InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsFilters>(
        'filters', filters);
    writer.writeCollectionOfEnumValues<
            InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions>(
        'permissions', permissions, (e) => e?.value);
    writer.writeCollectionOfEnumValues<
            InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch>(
        'prefetch', prefetch, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
