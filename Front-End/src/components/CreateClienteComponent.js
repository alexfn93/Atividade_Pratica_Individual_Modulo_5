// Criar a pagina para adicionar e alterar um cliente
import React, { Component } from 'react'
import ClienteService from '../services/ClienteService';

class CreateClienteComponent extends Component {
    constructor(props) {
        super(props)

        this.state = {
            idclientes: this.props.match.params.id,
            nome: '',
            sobrenome: '',
            dataNascimento: '',
            cpf: '',
            naturalidade: '',
            celular: '',
            sexo: '',
            email: '',
            senha: ''
        }
        this.changeNomeHandler = this.changeNomeHandler.bind(this);
        this.changeSobrenomeHandler = this.changeSobrenomeHandler.bind(this);
        this.changeDataNascimentoHandler = this.changeDataNascimentoHandler.bind(this);
        this.changeCpfHandler = this.changeCpfHandler.bind(this);
        this.changeNaturalidadeHandler = this.changeNaturalidadeHandler.bind(this);
        this.changeCelularHandler = this.changeCelularHandler.bind(this);
        this.changeSexoHandler = this.changeSexoHandler.bind(this);
        this.changeEmailHandler = this.changeEmailHandler.bind(this);
        this.changeSenhaHandler = this.changeSenhaHandler.bind(this);
        this.saveOrUpdateCliente = this.saveOrUpdateCliente.bind(this);
      
    }

    componentDidMount(){

        if(this.state.id === '_add'){
            return
        }else{
            ClienteService.getClienteById(this.state.id).then( (res) =>{
                let cliente = res.data;
                this.setState({nome: cliente.nome,
                    sobrenome: cliente.sobrenome,
                    dataNascimento : cliente.dataNascimento,
                    cpf : cliente.cpf,
                    naturalidade : cliente.naturalidade,
                    celular : cliente.celular,
                    sexo : cliente.sexo,
                    email : cliente.email,
                    senha : cliente.senha
                });
            });
        }        
    }
    saveOrUpdateCliente = (e) => {
        e.preventDefault();
        let cliente = {nome: this.state.nome, sobrenome: this.state.sobrenome, dataNascimento: this.state.dataNascimento, cpf: this.state.cpf, naturalidade: this.state.naturalidade, celular: this.state.celular, sexo: this.state.sexo, email: this.state.email, senha: this.state.senha};
        console.log('cliente => ' + JSON.stringify(cliente));

        if(this.state.id === '_add'){
            ClienteService.createCliente(cliente).then(res =>{
                this.props.history.push('/cliente');
            });
        }else{
            ClienteService.updateCliente(cliente, this.state.id).then( res => {
                this.props.history.push('/cliente');
            });
        }
    }
    
    changeNomeHandler= (event) => {
        this.setState({nome: event.target.value});
    }

    changeSobrenomeHandler= (event) => {
        this.setState({sobrenome: event.target.value});
    }

    changeDataNascimentoHandler= (event) => {
        this.setState({dataNascimento: event.target.value});
    }

    changeCpfHandler= (event) => {
        this.setState({cpf: event.target.value});
    }

    changeNaturalidadeHandler= (event) => {
        this.setState({naturalidade: event.target.value});
    }

    changeCelularHandler= (event) => {
        this.setState({celular: event.target.value});
    }

    changeSexoHandler= (event) => {
        this.setState({sexo: event.target.value});
    }

    changeEmailHandler= (event) => {
        this.setState({email: event.target.value});
    }

    changeSenhaHandler= (event) => {
        this.setState({d: event.target.value});
    }

    changeHandler= (event) => {
        this.setState({senha: event.target.value});
    }

    cancel(){
        this.props.history.push('/cliente');
    }

    getTitle(){
        if(this.state.id === '_add'){
            return <h3 className="text-center">Inserir Cliente</h3>
        }else{
            return <h3 className="text-center">Alterar Dados Cliente</h3>
        }
    }
    render() {
        return (
            <div>
                <br></br>
                   <div className = "container">
                        <div className = "row">
                            <div className = "card col-md-6 offset-md-3 offset-md-3">
                                {
                                    this.getTitle()
                                }
                                <div className = "card-body">
                                    <form>
                                        <div className = "form-group">
                                            <label> Nome: </label>
                                            <input placeholder="Nome" name="Nome" className="form-control" 
                                                value={this.state.nome} onChange={this.changeNomeHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Sobrenome: </label>
                                            <input placeholder="Sobrenome" name="sobrenome" className="form-control" 
                                                value={this.state.sobrenome} onChange={this.changeSobrenomeHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Data de Nascimento: </label>
                                            <input placeholder="Data de Nascimento" name="dataNascimento" className="form-control" 
                                                value={this.state.dataNascimento} onChange={this.changeDataNascimentoHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> CPF: </label>
                                            <input placeholder="CPF" name="cpfId" className="form-control" 
                                                value={this.state.cpf} onChange={this.changeCpfHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Naturalidade: </label>
                                            <input placeholder="Naturaidade" name="naturalidade" className="form-control" 
                                                value={this.state.naturalidade} onChange={this.changeNaturalidadeHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Celular: </label>
                                            <input placeholder="Celular" name="celular" className="form-control" 
                                                value={this.state.celular} onChange={this.changeCelularHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Sexo: </label>
                                            <input placeholder="Sexo" name="sexo" className="form-control" 
                                                value={this.state.sexo} onChange={this.changeSexoHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> E-mail: </label>
                                            <input placeholder="Email" name="email" className="form-control" 
                                                value={this.state.email} onChange={this.changeEmailHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Senha: </label>
                                            <input placeholder="Senha" name="senha" className="form-control" 
                                                value={this.state.senha} onChange={this.changeSenhaHandler}/>
                                        </div>

                                        <button className="btn btn-success" onClick={this.saveOrUpdateCliente}>Salvar</button>
                                        <button className="btn btn-danger" onClick={this.cancel.bind(this)} style={{marginLeft: "10px"}}>Cancelar</button>
                                    </form>
                                </div>
                            </div>
                        </div>

                   </div>
            </div>
        )
    }
}

export default CreateClienteComponent