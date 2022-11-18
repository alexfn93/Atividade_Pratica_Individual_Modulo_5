// Componente para listar os clientes
import React, { Component } from 'react'
import ClienteService from '../services/ClienteService'
class ListClienteComponent extends Component {
    constructor(props) {
        super(props)
        this.state = {
            cliente: []
        }
        this.addCliente = this.addCliente.bind(this);
        this.editCliente = this.editCliente.bind(this);
        this.deleteCliente = this.deleteCliente.bind(this);
    }
    deleteCliente(id) {
        ClienteService.deleteCliente(id).then(res => {
            this.setState({ cliente: this.state.cliente.filter(cliente => cliente.id !== id) });
        });
    }
    viewCliente(id) {
        this.props.history.push(`/view-cliente/${id}`);
    }
    editCliente(id) {
        this.props.history.push(`/add-cliente/${id}`);
    }
    componentDidMount() {
        ClienteService.getCliente().then((res) => {
            this.setState({ cliente: res.data });
        });
    }
    addCliente() {
        this.props.history.push('/add-cliente/_add');
    }
    render() {
        return (
            <div>
                <h2 className="text-center">Lista de Clientes</h2>
                <div className="row">
                    <button className="btn btn-primary" onClick={this.addCliente}> Inserir Cliente</button>
                </div>
                <br></br>
                <div className="row">
                    <table className="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th> Nome </th>
                                <th> Sobrenome </th>
                                <th> Data de Nascimento</th>
                                <th> CPF </th>
                                <th> Naturalidade</th>
                                <th> Celular</th>
                                <th> Sexo</th>
                                <th> E-mail</th>
                                <th> Senha</th>
                                <th> Acoes</th>
                            </tr>
                        </thead>
                        <tbody>
                            {
                                this.state.cliente.map(
                                    cliente =>
                                        <tr key={cliente.id}>
                                            <td> {cliente.nome}</td>
                                            <td> {cliente.sobrenome}</td>
                                            <td> {cliente.dataNascimento}</td>
                                            <td> {cliente.cpf}</td>
                                            <td> {cliente.naturalidade}</td>
                                            <td> {cliente.celular}</td>
                                            <td> {cliente.sexo}</td>
                                            <td> {cliente.email}</td>
                                            <td> {cliente.senha}</td>
                                            <td>
                                                <button onClick={() => this.editCliente(cliente.id)}
                                                    className="btn btn-info">Alterar </button>
                                                <button style={{ marginLeft: "10px" }} onClick={
                                                    this.deleteCliente(cliente.idclientes)} className="btn btn-danger">Apagar </button>
                                                <button style={{ marginLeft: "10px" }} onClick={() =>
                                                    this.viewCliente(cliente.id)} className="btn btn-info">Visualizar </button>
                                            </td>
                                        </tr>
                                )
                            }
                        </tbody>
                    </table>
                </div>
            </div>
        )
    }
}
export default ListClienteComponent