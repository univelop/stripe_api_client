// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './terminal_configuration_configuration_resource_currency_specific_config.dart';

/// auto generated
class TerminalConfigurationConfigurationResourceTipping
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The aed property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? aed;

  ///  The aud property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? aud;

  ///  The bgn property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? bgn;

  ///  The cad property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? cad;

  ///  The chf property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? chf;

  ///  The czk property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? czk;

  ///  The dkk property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? dkk;

  ///  The eur property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? eur;

  ///  The gbp property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? gbp;

  ///  The gip property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? gip;

  ///  The hkd property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? hkd;

  ///  The huf property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? huf;

  ///  The jpy property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? jpy;

  ///  The mxn property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? mxn;

  ///  The myr property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? myr;

  ///  The nok property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? nok;

  ///  The nzd property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? nzd;

  ///  The pln property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? pln;

  ///  The ron property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? ron;

  ///  The sek property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? sek;

  ///  The sgd property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? sgd;

  ///  The usd property
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig? usd;

  /// Instantiates a new [TerminalConfigurationConfigurationResourceTipping] and sets the default values.
  TerminalConfigurationConfigurationResourceTipping() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalConfigurationConfigurationResourceTipping
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TerminalConfigurationConfigurationResourceTipping();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['aed'] = (node) => aed = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['aud'] = (node) => aud = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['bgn'] = (node) => bgn = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['cad'] = (node) => cad = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['chf'] = (node) => chf = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['czk'] = (node) => czk = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['dkk'] = (node) => dkk = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['eur'] = (node) => eur = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['gbp'] = (node) => gbp = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['gip'] = (node) => gip = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['hkd'] = (node) => hkd = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['huf'] = (node) => huf = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['jpy'] = (node) => jpy = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['mxn'] = (node) => mxn = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['myr'] = (node) => myr = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['nok'] = (node) => nok = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['nzd'] = (node) => nzd = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['pln'] = (node) => pln = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['ron'] = (node) => ron = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['sek'] = (node) => sek = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['sgd'] = (node) => sgd = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['usd'] = (node) => usd = node.getObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        TerminalConfigurationConfigurationResourceCurrencySpecificConfig
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'aed', aed);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'aud', aud);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'bgn', bgn);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'cad', cad);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'chf', chf);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'czk', czk);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'dkk', dkk);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'eur', eur);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'gbp', gbp);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'gip', gip);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'hkd', hkd);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'huf', huf);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'jpy', jpy);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'mxn', mxn);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'myr', myr);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'nok', nok);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'nzd', nzd);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'pln', pln);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'ron', ron);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'sek', sek);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'sgd', sgd);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceCurrencySpecificConfig>(
        'usd', usd);
    writer.writeAdditionalData(additionalData);
  }
}
