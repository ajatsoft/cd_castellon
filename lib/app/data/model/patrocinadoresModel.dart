class Patrocinadores {
  Patrocinadores({
    this.empresa,
  });

  final List<Empresa> empresa;

  factory Patrocinadores.fromJson(Map<String, dynamic> json) => Patrocinadores(
        empresa: json["Empresa"] == null
            ? null
            : List<Empresa>.from(
                json["Empresa"].map((x) => Empresa.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Empresa": empresa == null
            ? null
            : List<dynamic>.from(empresa.map((x) => x.toJson())),
      };
}

class Empresa {
  Empresa({
    this.urlImg,
    this.nombre,
    this.subText,
    this.descripcion,
    this.web,
  });

  final String urlImg;
  final String nombre;
  final String subText;
  final String descripcion;
  final String web;

  factory Empresa.fromJson(Map<String, dynamic> json) => Empresa(
        urlImg: json["urlImg"] == null ? null : json["urlImg"],
        nombre: json["nombre"] == null ? null : json["nombre"],
        subText: json["subText"] == null ? null : json["subText"],
        descripcion: json["descripcion"] == null ? null : json["descripcion"],
        web: json["web"] == null ? null : json["web"],
      );

  Map<String, dynamic> toJson() => {
        "urlImg": urlImg == null ? null : urlImg,
        "nombre": nombre == null ? null : nombre,
        "subText": subText == null ? null : subText,
        "descripcion": descripcion == null ? null : descripcion,
        "web": web == null ? null : web,
      };
}
