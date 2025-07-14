Locales = {
    de = {
        scuba_used = "Du hast den Tauchanzug angezogen. Viel Spaß beim Tauchen!",
        tank_used = "Du hast eine neue Tauchflasche verwendet. Du kannst wieder 20 Minuten tauchen.",
        no_gear = "Du hast keinen Tauchanzug an!",
        air_out = "Deine Luft ist aufgebraucht. Verwende eine Tauchflasche oder gehe an die Oberfläche.",
        refill_success = "Luftvorrat erneuert."
    },
    en = {
        scuba_used = "You equipped the scuba gear. Enjoy diving!",
        tank_used = "You used a new oxygen tank. You can dive for another 20 minutes.",
        no_gear = "You are not wearing scuba gear!",
        air_out = "You ran out of air. Use an oxygen tank or surface.",
        refill_success = "Oxygen refilled."
    },
    it = {
        scuba_used = "Hai indossato l'attrezzatura subacquea. Buona immersione!",
        tank_used = "Hai usato una nuova bombola. Puoi immergerti per altri 20 minuti.",
        no_gear = "Non indossi l'attrezzatura da sub!",
        air_out = "Hai finito l'aria. Usa una bombola o risali.",
        refill_success = "Ossigeno ricaricato."
    },
    fr = {
        scuba_used = "Vous avez mis la combinaison. Bonne plongée !",
        tank_used = "Vous avez utilisé une nouvelle bouteille. 20 minutes supplémentaires.",
        no_gear = "Vous ne portez pas d'équipement de plongée !",
        air_out = "Vous n'avez plus d'air. Utilisez une bouteille ou remontez.",
        refill_success = "Oxygène rechargé."
    }
}

function _U(key)
    return Locales[Config.Language][key] or key
end