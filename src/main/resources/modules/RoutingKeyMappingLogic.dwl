%dw 2.0

fun normalizeLogic (inputName) =  
    if (isBlank(inputName))
        "UNKNOWN"
    else
        lower(inputName) replace /[. ]+/ with ("_")

fun createRoutingKeyMapping(country, city, action) = 
    "$(normalizeLogic(country)).$(normalizeLogic(city)).$(action)"