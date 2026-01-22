// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_tipping_member1_aed.dart';
import './configurations_post_request_body_tipping_member1_aud.dart';
import './configurations_post_request_body_tipping_member1_bgn.dart';
import './configurations_post_request_body_tipping_member1_cad.dart';
import './configurations_post_request_body_tipping_member1_chf.dart';
import './configurations_post_request_body_tipping_member1_czk.dart';
import './configurations_post_request_body_tipping_member1_dkk.dart';
import './configurations_post_request_body_tipping_member1_eur.dart';
import './configurations_post_request_body_tipping_member1_gbp.dart';
import './configurations_post_request_body_tipping_member1_gip.dart';
import './configurations_post_request_body_tipping_member1_hkd.dart';
import './configurations_post_request_body_tipping_member1_huf.dart';
import './configurations_post_request_body_tipping_member1_jpy.dart';
import './configurations_post_request_body_tipping_member1_mxn.dart';
import './configurations_post_request_body_tipping_member1_myr.dart';
import './configurations_post_request_body_tipping_member1_nok.dart';
import './configurations_post_request_body_tipping_member1_nzd.dart';
import './configurations_post_request_body_tipping_member1_pln.dart';
import './configurations_post_request_body_tipping_member1_ron.dart';
import './configurations_post_request_body_tipping_member1_sek.dart';
import './configurations_post_request_body_tipping_member1_sgd.dart';
import './configurations_post_request_body_tipping_member1_usd.dart';

/// auto generated
class ConfigurationsPostRequestBodyTippingMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The aed property
  ConfigurationsPostRequestBodyTippingMember1Aed? aed;

  ///  The aud property
  ConfigurationsPostRequestBodyTippingMember1Aud? aud;

  ///  The bgn property
  ConfigurationsPostRequestBodyTippingMember1Bgn? bgn;

  ///  The cad property
  ConfigurationsPostRequestBodyTippingMember1Cad? cad;

  ///  The chf property
  ConfigurationsPostRequestBodyTippingMember1Chf? chf;

  ///  The czk property
  ConfigurationsPostRequestBodyTippingMember1Czk? czk;

  ///  The dkk property
  ConfigurationsPostRequestBodyTippingMember1Dkk? dkk;

  ///  The eur property
  ConfigurationsPostRequestBodyTippingMember1Eur? eur;

  ///  The gbp property
  ConfigurationsPostRequestBodyTippingMember1Gbp? gbp;

  ///  The gip property
  ConfigurationsPostRequestBodyTippingMember1Gip? gip;

  ///  The hkd property
  ConfigurationsPostRequestBodyTippingMember1Hkd? hkd;

  ///  The huf property
  ConfigurationsPostRequestBodyTippingMember1Huf? huf;

  ///  The jpy property
  ConfigurationsPostRequestBodyTippingMember1Jpy? jpy;

  ///  The mxn property
  ConfigurationsPostRequestBodyTippingMember1Mxn? mxn;

  ///  The myr property
  ConfigurationsPostRequestBodyTippingMember1Myr? myr;

  ///  The nok property
  ConfigurationsPostRequestBodyTippingMember1Nok? nok;

  ///  The nzd property
  ConfigurationsPostRequestBodyTippingMember1Nzd? nzd;

  ///  The pln property
  ConfigurationsPostRequestBodyTippingMember1Pln? pln;

  ///  The ron property
  ConfigurationsPostRequestBodyTippingMember1Ron? ron;

  ///  The sek property
  ConfigurationsPostRequestBodyTippingMember1Sek? sek;

  ///  The sgd property
  ConfigurationsPostRequestBodyTippingMember1Sgd? sgd;

  ///  The usd property
  ConfigurationsPostRequestBodyTippingMember1Usd? usd;

  /// Instantiates a new [ConfigurationsPostRequestBodyTippingMember1] and sets the default values.
  ConfigurationsPostRequestBodyTippingMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyTippingMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfigurationsPostRequestBodyTippingMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['aed'] = (node) => aed =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Aed>(
            ConfigurationsPostRequestBodyTippingMember1Aed
                .createFromDiscriminatorValue);
    deserializerMap['aud'] = (node) => aud =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Aud>(
            ConfigurationsPostRequestBodyTippingMember1Aud
                .createFromDiscriminatorValue);
    deserializerMap['bgn'] = (node) => bgn =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Bgn>(
            ConfigurationsPostRequestBodyTippingMember1Bgn
                .createFromDiscriminatorValue);
    deserializerMap['cad'] = (node) => cad =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Cad>(
            ConfigurationsPostRequestBodyTippingMember1Cad
                .createFromDiscriminatorValue);
    deserializerMap['chf'] = (node) => chf =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Chf>(
            ConfigurationsPostRequestBodyTippingMember1Chf
                .createFromDiscriminatorValue);
    deserializerMap['czk'] = (node) => czk =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Czk>(
            ConfigurationsPostRequestBodyTippingMember1Czk
                .createFromDiscriminatorValue);
    deserializerMap['dkk'] = (node) => dkk =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Dkk>(
            ConfigurationsPostRequestBodyTippingMember1Dkk
                .createFromDiscriminatorValue);
    deserializerMap['eur'] = (node) => eur =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Eur>(
            ConfigurationsPostRequestBodyTippingMember1Eur
                .createFromDiscriminatorValue);
    deserializerMap['gbp'] = (node) => gbp =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Gbp>(
            ConfigurationsPostRequestBodyTippingMember1Gbp
                .createFromDiscriminatorValue);
    deserializerMap['gip'] = (node) => gip =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Gip>(
            ConfigurationsPostRequestBodyTippingMember1Gip
                .createFromDiscriminatorValue);
    deserializerMap['hkd'] = (node) => hkd =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Hkd>(
            ConfigurationsPostRequestBodyTippingMember1Hkd
                .createFromDiscriminatorValue);
    deserializerMap['huf'] = (node) => huf =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Huf>(
            ConfigurationsPostRequestBodyTippingMember1Huf
                .createFromDiscriminatorValue);
    deserializerMap['jpy'] = (node) => jpy =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Jpy>(
            ConfigurationsPostRequestBodyTippingMember1Jpy
                .createFromDiscriminatorValue);
    deserializerMap['mxn'] = (node) => mxn =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Mxn>(
            ConfigurationsPostRequestBodyTippingMember1Mxn
                .createFromDiscriminatorValue);
    deserializerMap['myr'] = (node) => myr =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Myr>(
            ConfigurationsPostRequestBodyTippingMember1Myr
                .createFromDiscriminatorValue);
    deserializerMap['nok'] = (node) => nok =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Nok>(
            ConfigurationsPostRequestBodyTippingMember1Nok
                .createFromDiscriminatorValue);
    deserializerMap['nzd'] = (node) => nzd =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Nzd>(
            ConfigurationsPostRequestBodyTippingMember1Nzd
                .createFromDiscriminatorValue);
    deserializerMap['pln'] = (node) => pln =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Pln>(
            ConfigurationsPostRequestBodyTippingMember1Pln
                .createFromDiscriminatorValue);
    deserializerMap['ron'] = (node) => ron =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Ron>(
            ConfigurationsPostRequestBodyTippingMember1Ron
                .createFromDiscriminatorValue);
    deserializerMap['sek'] = (node) => sek =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Sek>(
            ConfigurationsPostRequestBodyTippingMember1Sek
                .createFromDiscriminatorValue);
    deserializerMap['sgd'] = (node) => sgd =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Sgd>(
            ConfigurationsPostRequestBodyTippingMember1Sgd
                .createFromDiscriminatorValue);
    deserializerMap['usd'] = (node) => usd =
        node.getObjectValue<ConfigurationsPostRequestBodyTippingMember1Usd>(
            ConfigurationsPostRequestBodyTippingMember1Usd
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Aed>(
        'aed', aed);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Aud>(
        'aud', aud);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Bgn>(
        'bgn', bgn);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Cad>(
        'cad', cad);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Chf>(
        'chf', chf);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Czk>(
        'czk', czk);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Dkk>(
        'dkk', dkk);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Eur>(
        'eur', eur);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Gbp>(
        'gbp', gbp);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Gip>(
        'gip', gip);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Hkd>(
        'hkd', hkd);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Huf>(
        'huf', huf);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Jpy>(
        'jpy', jpy);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Mxn>(
        'mxn', mxn);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Myr>(
        'myr', myr);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Nok>(
        'nok', nok);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Nzd>(
        'nzd', nzd);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Pln>(
        'pln', pln);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Ron>(
        'ron', ron);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Sek>(
        'sek', sek);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Sgd>(
        'sgd', sgd);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1Usd>(
        'usd', usd);
    writer.writeAdditionalData(additionalData);
  }
}
