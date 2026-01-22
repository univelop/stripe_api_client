// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_resource_tax_settings_status_details_resource_active.dart';
import './tax_product_resource_tax_settings_status_details_resource_pending.dart';

/// auto generated
class TaxProductResourceTaxSettingsStatusDetails
    implements AdditionalDataHolder, Parsable {
  ///  The active property
  TaxProductResourceTaxSettingsStatusDetailsResourceActive? active;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The pending property
  TaxProductResourceTaxSettingsStatusDetailsResourcePending? pending;

  /// Instantiates a new [TaxProductResourceTaxSettingsStatusDetails] and sets the default values.
  TaxProductResourceTaxSettingsStatusDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductResourceTaxSettingsStatusDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxProductResourceTaxSettingsStatusDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getObjectValue<
            TaxProductResourceTaxSettingsStatusDetailsResourceActive>(
        TaxProductResourceTaxSettingsStatusDetailsResourceActive
            .createFromDiscriminatorValue);
    deserializerMap['pending'] = (node) => pending = node.getObjectValue<
            TaxProductResourceTaxSettingsStatusDetailsResourcePending>(
        TaxProductResourceTaxSettingsStatusDetailsResourcePending
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TaxProductResourceTaxSettingsStatusDetailsResourceActive>(
        'active', active);
    writer.writeObjectValue<
            TaxProductResourceTaxSettingsStatusDetailsResourcePending>(
        'pending', pending);
    writer.writeAdditionalData(additionalData);
  }
}
