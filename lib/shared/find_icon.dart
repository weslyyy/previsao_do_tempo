String FindIcon(String condition) {
  switch (condition) {
    case "clear_day":
      return "assets/images/encolarado.svg";

    case "cloud":
      return "assets/images/nublado.svg";

    case "storm":
      return "assets/images/chuva_forte.svg";

    case "clear_day":
      return "assets/images/encolarado.svg";

    case "cloudly_day":
      return "assets/images/sol_entre_nuvens.svg";

    default:
      return "assets/images/chuva_fraca.svg";
  }
}
