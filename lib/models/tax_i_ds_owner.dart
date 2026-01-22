// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_i_ds_owner_account.dart';
import './tax_i_ds_owner_application.dart';
import './tax_i_ds_owner_customer.dart';
import './tax_i_ds_owner_type.dart';

/// auto generated
class TaxIDsOwner implements AdditionalDataHolder, Parsable {
  ///  The account being referenced when `type` is `account`.
  TaxIDsOwnerAccount? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The Connect Application being referenced when `type` is `application`.
  TaxIDsOwnerApplication? application;

  ///  The customer being referenced when `type` is `customer`.
  TaxIDsOwnerCustomer? customer;

  ///  The Account representing the customer being referenced when `type` is `customer`.
  String? customerAccount;

  ///  Type of owner referenced.
  TaxIDsOwnerType? type_;

  /// Instantiates a new [TaxIDsOwner] and sets the default values.
  TaxIDsOwner() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxIDsOwner createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxIDsOwner();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account =
        node.getObjectValue<TaxIDsOwnerAccount>(
            TaxIDsOwnerAccount.createFromDiscriminatorValue);
    deserializerMap['application'] = (node) => application =
        node.getObjectValue<TaxIDsOwnerApplication>(
            TaxIDsOwnerApplication.createFromDiscriminatorValue);
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<TaxIDsOwnerCustomer>(
            TaxIDsOwnerCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<TaxIDsOwnerType>((stringValue) => TaxIDsOwnerType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TaxIDsOwnerAccount>('account', account);
    writer.writeObjectValue<TaxIDsOwnerApplication>('application', application);
    writer.writeObjectValue<TaxIDsOwnerCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeEnumValue<TaxIDsOwnerType>('type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
