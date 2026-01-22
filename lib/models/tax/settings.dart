// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../tax_product_resource_tax_settings_defaults.dart';
import '../tax_product_resource_tax_settings_head_office.dart';
import '../tax_product_resource_tax_settings_status_details.dart';
import './settings_object.dart';
import './settings_status.dart';

/// auto generated
/// You can use Tax `Settings` to manage configurations used by Stripe Tax calculations.Related guide: [Using the Settings API](https://docs.stripe.com/tax/settings-api)
class Settings implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The defaults property
  TaxProductResourceTaxSettingsDefaults? defaults;

  ///  The place where your business is located.
  TaxProductResourceTaxSettingsHeadOffice? headOffice;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  SettingsObject? object;

  ///  The status of the Tax `Settings`.
  SettingsStatus? status;

  ///  The status_details property
  TaxProductResourceTaxSettingsStatusDetails? statusDetails;

  /// Instantiates a new [Settings] and sets the default values.
  Settings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Settings createFromDiscriminatorValue(ParseNode parseNode) {
    return Settings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['defaults'] = (node) => defaults =
        node.getObjectValue<TaxProductResourceTaxSettingsDefaults>(
            TaxProductResourceTaxSettingsDefaults.createFromDiscriminatorValue);
    deserializerMap['head_office'] = (node) => headOffice = node.getObjectValue<
            TaxProductResourceTaxSettingsHeadOffice>(
        TaxProductResourceTaxSettingsHeadOffice.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SettingsObject>((stringValue) => SettingsObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<SettingsStatus>((stringValue) => SettingsStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['status_details'] = (node) => statusDetails =
        node.getObjectValue<TaxProductResourceTaxSettingsStatusDetails>(
            TaxProductResourceTaxSettingsStatusDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TaxProductResourceTaxSettingsDefaults>(
        'defaults', defaults);
    writer.writeObjectValue<TaxProductResourceTaxSettingsHeadOffice>(
        'head_office', headOffice);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<SettingsObject>('object', object, (e) => e?.value);
    writer.writeEnumValue<SettingsStatus>('status', status, (e) => e?.value);
    writer.writeObjectValue<TaxProductResourceTaxSettingsStatusDetails>(
        'status_details', statusDetails);
    writer.writeAdditionalData(additionalData);
  }
}
