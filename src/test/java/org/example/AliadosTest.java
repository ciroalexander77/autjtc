package org.example;

import com.intuit.karate.junit5.Karate;

public class AliadosTest {
    @Karate.Test
    Karate testAliados() {
        return Karate.run("classpath:Aliados/Aliados.feature");
    }
    @Karate.Test
    Karate testCrearAliado() {
        return Karate.run("classpath:Aliados/CrearAliado.feature");
    }
    @Karate.Test
    Karate testActualizarAliado() {
        return Karate.run("classpath:UsuariosAliados/UsuarioAliados.feature");
    }
    @Karate.Test
    Karate testUpdateAlliedUser() {
        return Karate.run("classpath:UsuariosAliados/UpdateAlliedUser.feature");
    }
    @Karate.Test
    Karate testCrearUsuarioAliado() {
        return Karate.run("classpath:UsuariosAliados/CrearUsuarioAliado.feature");
    }
    @Karate.Test
    Karate testCrearClienteNoLlamar() {
        return Karate.run("classpath:ClientesNoLlamar/CrearClienteNoLlamar.feature");
    }
    @Karate.Test
    Karate testConsultarClienteNoLlamar() {
        return Karate.run("classpath:ClientesNoLlamar/ConsultarClienteNoLlamar.feature");
    }
    @Karate.Test
    Karate testEliminarClienteNoLlamar() {
        return Karate.run("classpath:ClientesNoLlamar/EliminarClienteNoLlamar.feature");
    }
    @Karate.Test
    Karate testConsultarTasasAnuales() {
        return Karate.run("classpath:TasasAnuales/ConsultarTasasAnuales.feature");
    }
    @Karate.Test
    Karate testActualizarTasasAnuales() {
        return Karate.run("classpath:TasasAnuales/ActualizarTasasAnuales.feature");
    }
    @Karate.Test
    Karate testObtenerPlazos() {
        return Karate.run("classpath:Plazos/ObtenerPlazos.feature");
    }
    @Karate.Test
    Karate testListChecks() {
        return Karate.run("classpath:MantenimientoCheques/ListChecks.feature");
    }
    @Karate.Test
    Karate testConfirmCheck() {
        return Karate.run("classpath:Cheque/ConfirmCheck.feature");
    }

    @Karate.Test
    Karate testUpdateSales() {
        return Karate.run("classpath:Cheque/UpdateSale.feature");
    }
    @Karate.Test
    Karate testListBins() {
        return Karate.run("classpath:BaseInformacion/ListBins.feature");
    }
    @Karate.Test
    Karate testObtenerBandejaDeVentas() {
        return Karate.run("classpath:BaseInformacion/ObtenerBandejaDeVentas.feature");
    }
    @Karate.Test
    Karate testConfirmBaseInformacion() {
        return Karate.run("classpath:BaseInformacion/ConfirmBaseInformation.feature");
    }
    @Karate.Test
    Karate testObtenerListarTiposVentas() {
        return Karate.run("classpath:BaseInformacion/ListarTiposVentas.feature");
    }

    @Karate.Test
    Karate testGetListInformationQa() {
        return Karate.run("classpath:BaseInformacion/GetListBaseInformationQa.feature");
    }
    @Karate.Test
    Karate testGenerateBaseInformation() {
        return Karate.run("classpath:BaseInformacion/GenerateBaseInformation.feature");
    }
    @Karate.Test
    Karate testCargarArchivoBase() {
        return Karate.run("classpath:BaseInformacion/CargarArchivoBase.feature");
    }
    @Karate.Test
    Karate testNewRequest() {
        return Karate.run("classpath:Sell/NewRequest.feature");
    }
    @Karate.Test
    Karate testAsignarVendedor() {
        return Karate.run("classpath:Sell/AsignarVendedor.feature");
    }
    @Karate.Test
    Karate testDesembolsoVentasQa() {
        return Karate.run("classpath:Sell/DesembolsoVentasQa.feature");
    }
    @Karate.Test
    Karate testListAvalaibleAndDetail() {
        return Karate.run("classpath:Sell/ListAvalaibleAndDetail.feature");
    }
    @Karate.Test
    Karate testListarClientesAliados() {
        return Karate.run("classpath:PuntoVenta/ListarClientesAliados.feature");
    }
    @Karate.Test
    Karate testInformacionVenta() {
        return Karate.run("classpath:PuntoVenta/InformacionVenta.feature");
    }
    @Karate.Test
    Karate testSendOffer() {
        return Karate.run("classpath:PuntoVenta/SendOffer.feature");
    }
    @Karate.Test
    Karate testListSaleByUser() {
        return Karate.run("classpath:PuntoVenta/ListSaleByUser.feature");
    }
    @Karate.Test
    Karate testListOfferByUser() {
        return Karate.run("classpath:PuntoVenta/ListOffertByUser.feature");
    }
    @Karate.Test
    Karate testListAllCustomerCards() {
        return Karate.run("classpath:PuntoVenta/ListAllCustomerCards.feature");
    }
    @Karate.Test
    Karate testCreateBinnacle() {
        return Karate.run("classpath:Bitacora/CreateBinnacle.feature");
    }


}