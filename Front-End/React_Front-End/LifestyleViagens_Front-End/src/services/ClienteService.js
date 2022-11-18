// Cria a classe de servico ClienteService para realizar as chamadas HTTP REST via Axios

import axios from 'axios';

const CLIENTE_API_BASE_URL = "http://localhost:8080/api/v1/cliente";

class ClienteService {

    getCliente() {
        return axios.get(CLIENTE_API_BASE_URL);
    }
    createCliente(clienteId) {
        return axios.post(CLIENTE_API_BASE_URL, clienteId);
    }
    getClienteById(clienteId) {
        return axios.get(CLIENTE_API_BASE_URL + '/' + clienteId);
    }
    updateCliente(cliente, clienteId) {
        return axios.put(CLIENTE_API_BASE_URL + '/' + clienteId, cliente);
    }
    deleteCliente(clienteId) {
        return axios.delete(CLIENTE_API_BASE_URL + '/' + clienteId);
    }
}
export default new ClienteService()