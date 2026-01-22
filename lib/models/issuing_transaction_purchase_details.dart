// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_transaction_fleet_data.dart';
import './issuing_transaction_flight_data.dart';
import './issuing_transaction_fuel_data.dart';
import './issuing_transaction_lodging_data.dart';
import './issuing_transaction_receipt_data.dart';

/// auto generated
class IssuingTransactionPurchaseDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Fleet-specific information for transactions using Fleet cards.
  IssuingTransactionFleetData? fleet;

  ///  Information about the flight that was purchased with this transaction.
  IssuingTransactionFlightData? flight;

  ///  Information about fuel that was purchased with this transaction.
  IssuingTransactionFuelData? fuel;

  ///  Information about lodging that was purchased with this transaction.
  IssuingTransactionLodgingData? lodging;

  ///  The line items in the purchase.
  Iterable<IssuingTransactionReceiptData>? receipt;

  ///  A merchant-specific order number.
  String? reference;

  /// Instantiates a new [IssuingTransactionPurchaseDetails] and sets the default values.
  IssuingTransactionPurchaseDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingTransactionPurchaseDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingTransactionPurchaseDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fleet'] = (node) => fleet =
        node.getObjectValue<IssuingTransactionFleetData>(
            IssuingTransactionFleetData.createFromDiscriminatorValue);
    deserializerMap['flight'] = (node) => flight =
        node.getObjectValue<IssuingTransactionFlightData>(
            IssuingTransactionFlightData.createFromDiscriminatorValue);
    deserializerMap['fuel'] = (node) => fuel =
        node.getObjectValue<IssuingTransactionFuelData>(
            IssuingTransactionFuelData.createFromDiscriminatorValue);
    deserializerMap['lodging'] = (node) => lodging =
        node.getObjectValue<IssuingTransactionLodgingData>(
            IssuingTransactionLodgingData.createFromDiscriminatorValue);
    deserializerMap['receipt'] = (node) => receipt =
        node.getCollectionOfObjectValues<IssuingTransactionReceiptData>(
            IssuingTransactionReceiptData.createFromDiscriminatorValue);
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<IssuingTransactionFleetData>('fleet', fleet);
    writer.writeObjectValue<IssuingTransactionFlightData>('flight', flight);
    writer.writeObjectValue<IssuingTransactionFuelData>('fuel', fuel);
    writer.writeObjectValue<IssuingTransactionLodgingData>('lodging', lodging);
    writer.writeCollectionOfObjectValues<IssuingTransactionReceiptData>(
        'receipt', receipt);
    writer.writeStringValue('reference', reference);
    writer.writeAdditionalData(additionalData);
  }
}
