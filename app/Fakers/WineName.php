<?php

namespace App\Fakers;

use Faker\Provider\Base;

class WineName extends Base
{
    protected static $prefixes = ["Grand", "Petit", "Magnifique", "Charmant", "Séduisant", "Délicieux", "Mystérieux", "Élégant", "Sombre", "Lumineux", "Fascinant", "Sauvage", "Sublime", "Ancien", "Noble", "Harmonieux", "Raffiné", "Inoubliable", "Célèbre", "Rustique", "Sincère", "Solennel", "Épique", "Envoûtant", "Vif", "Vibrant", "Serein", "Impérial", "Paisible", "Glorieux", "Époustouflant", "Vénérable", "Ardent", "Distingué", "Véritable", "Vaillant", "Irrésistible", "Brillant", "Chaleureux", "Caché", "Apaisant", "Séraphique", "Charismatique", "Emblématique", "Vital", "Majestueux", "Impressionnant", "Imposant"];
    protected static $names = ["Château", "Domaine", "Vignoble", "Tonneau", "rhizome", "Millésime", "Clos", "Champagne", "Prestige", "Terroir", "Coteaux", "Grenache", "Merlot", "Pinot", "Cabernet", "Syrah", "Bordeaux", "Beaujolais", "Chardonnay", "Sauvignon", "Rouge", "Blanc", "Noir", "Blanc de Blancs", "Blanc de Noirs", "Brut", "Sec", "Doux", "Sec", "Fruité", "Épicé", "Velouté", "Corsé", "Léger", "Riche", "Moelleux", "Champêtre", "Montagneux", "Méditerranéen", "Briseur", "Valon", "Colline", "Lac", "Torrent", "Ruisseau", "Forêt", "Plateau", "Rocher"];
    protected static $suffixes = ["Étonnant", "Délicat", "Judicieux", "Exquis", "Magique", "Raffiné", "Exceptionnel", "Divin", "Savoureux", "Précieux", "Harmonieux", "Fascinant", "Séduisant", "Merveilleux", "Inoubliable", "Mystérieux", "Charmant", "Élégant", "Authentique", "Prestigieux", "Époustouflant", "Inspirant", "Irrésistible", "Impressionnant", "Splendide", "Imposant", "Captivant", "Solennel", "Vénérable", "Apaisant", "Sublime", "Paisible", "Glorieux", "Sincère", "Épique", "Envoûtant", "Vif", "Vibrant", "Serein", "Éblouissant", "Féerique", "Majestueux", "Charismatique", "Emblématique", "Vital", "Distingué", "Vaillant", "Illuminant", "Radieux", "Lumineux"];

    public function wineName(): string
    {
        return static::randomElement(static::$prefixes) . ' ' . static::randomElement(static::$names) . ' ' . static::randomElement(static::$suffixes);
    }
}
