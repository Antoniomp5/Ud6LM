xquery version "1.1";

<resultados>
{
    for $baile in doc("DB_BailesDeSalon.xml")//baile
    where $baile/profesor and $baile/precio = 'mensual'
    return
        <baile>
            <nombre>{$baile/nombre/text()}</nombre>
            <precio>{$baile/precio/text()}</precio>
            <plazas>{$baile/plazas/text()}</plazas>
            <comienzo>{$baile/comienzo/text()}</comienzo>
            <fin>{$baile/fin/text()}</fin>
            <profesor>{$baile/profesor/text()}</profesor>
            <sala>{$baile/sala/text()}</sala>
        </baile>
}
</resultados>
