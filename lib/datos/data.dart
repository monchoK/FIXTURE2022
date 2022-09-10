class Datos {
  final int diferenciasdegoles;
  final int ganados;
  final int empatados;
  final int perdidos;
  final int golesafavor;
  final int golesencontra;
  final int partidosjugados;
  final int puntos;
  final String iso3;
  Datos(
      this.iso3,
      this.partidosjugados,
      this.ganados,
      this.empatados,
      this.perdidos,
      this.golesafavor,
      this.golesencontra,
      this.diferenciasdegoles,
      this.puntos);

  Datos.fromJson(Map<dynamic, dynamic> json)
      : diferenciasdegoles = int.parse(json["Diferencias_de_goles"] as String),
        ganados = int.parse(json["Ganados"] as String),
        empatados = int.parse(json["Empatados"] as String),
        perdidos = int.parse(json["Perdidos"] as String),
        golesafavor = int.parse(json["Goles_a_favor"] as String),
        golesencontra = int.parse(json["Goles_en_contra"] as String),
        partidosjugados = int.parse(json["Partidos_Jugados"] as String),
        puntos = int.parse(json["Puntos"] as String),
        iso3 = json["ISO3"];
}
