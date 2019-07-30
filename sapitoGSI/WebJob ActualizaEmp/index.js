var request = require('request');

const uri_cat = 'http://132.147.1.20:8001/sap/opu/odata/sap/ZHCM_WS_REGEMP02_SRV/SocDivSet?$format=json';
const uri_post = 'https://gsiconnectapi.azurewebsites.net/v1/empresas/actualiza/';

function getEmpresas() {

    let options = {
        method: 'GET',
        url: `${uri_cat}`,
        headers:
        {
            'cache-control' : 'no-cache'
        }
    };

    request(options, (error, response, body) => {
        if(!error && response.statusCode === 200) {
            JSON.parse(body).d.results.forEach(empresa => {
                request.post({
                    uri: uri_post,
                    headers: {'Content-Type': 'application/json'},
                    body: JSON.stringify({
                        "Sociedad":empresa.Bukrs,
                        "NombreEmpresa":empresa.Butxt,
                        "DivP":empresa.Werks,
                        "TextoDiv":empresa.Name1})
                });
            });
        }else{
            console.log(error);
        }
    });
};

getEmpresas();
