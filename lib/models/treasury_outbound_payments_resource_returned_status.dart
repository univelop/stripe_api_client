// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_outbound_payments_resource_returned_status_code.dart';
import './treasury_outbound_payments_resource_returned_status_transaction.dart';

/// auto generated
class TreasuryOutboundPaymentsResourceReturnedStatus
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Reason for the return.
  TreasuryOutboundPaymentsResourceReturnedStatusCode? code;

  ///  The Transaction associated with this object.
  TreasuryOutboundPaymentsResourceReturnedStatusTransaction? transaction;

  /// Instantiates a new [TreasuryOutboundPaymentsResourceReturnedStatus] and sets the default values.
  TreasuryOutboundPaymentsResourceReturnedStatus() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryOutboundPaymentsResourceReturnedStatus
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryOutboundPaymentsResourceReturnedStatus();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['code'] = (node) => code =
        node.getEnumValue<TreasuryOutboundPaymentsResourceReturnedStatusCode>(
            (stringValue) => TreasuryOutboundPaymentsResourceReturnedStatusCode
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['transaction'] = (node) => transaction =
        node.getObjectValue<
                TreasuryOutboundPaymentsResourceReturnedStatusTransaction>(
            TreasuryOutboundPaymentsResourceReturnedStatusTransaction
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<TreasuryOutboundPaymentsResourceReturnedStatusCode>(
        'code', code, (e) => e?.value);
    writer.writeObjectValue<
            TreasuryOutboundPaymentsResourceReturnedStatusTransaction>(
        'transaction', transaction);
    writer.writeAdditionalData(additionalData);
  }
}
