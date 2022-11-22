package com.lifestyleviagens.crm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.lifestyleviagens.api.ResourceNotFoundException;
import com.lifestyleviagens.crm.model.Cliente;
import com.lifestyleviagens.crm.repository.ClienteRepository;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/v1/")
public class ClienteController {
	
	@Autowired
	private ClienteRepository clienteRepository; 
	
	//Pegar todos os clientes
	@GetMapping("/cliente")
	public List<Cliente> getAllFuncionarios() {
		return clienteRepository.findAll();
	
	}
	
	//Pegar um cliente usando seu ID
		@GetMapping("/cliente/{id}")
		public ResponseEntity<Cliente> getClienteById(@PathVariable int idclientes){
			Cliente cliente = clienteRepository.findById(idclientes)
			.orElseThrow(() -> new ResourceNotFoundException("Cliente não localizado com o id : " + idclientes));
			return ResponseEntity.ok(cliente);
		}
		
	//Criar um novo cliente
			@PostMapping("/cliente")
			@ResponseStatus(HttpStatus.CREATED)
			public Cliente createCliente(@RequestBody Cliente cliente) {
				return clienteRepository.save(cliente);
			}

	//Alterar um cliente
			@PutMapping("/cliente/{idclientes}")
			public ResponseEntity<Cliente> updateCliente(@PathVariable int idclientes,
					@RequestBody Cliente clienteDetails) {
				Cliente cliente = clienteRepository.findById(idclientes)
						.orElseThrow(() -> new ResourceNotFoundException("Cliente não localizado com id :" + idclientes));
				cliente.setNome(clienteDetails.getNome());
				cliente.setSobrenome(clienteDetails.getSobrenome());
				cliente.setDataNascimento(clienteDetails.getDataNascimento());
				cliente.setCpf(clienteDetails.getCpf());
				cliente.setNacionalidade(clienteDetails.getNacionalidade());
				cliente.setCelular(clienteDetails.getCelular());
				cliente.setSexo(clienteDetails.getSexo());
				cliente.setEmail(clienteDetails.getEmail());
				cliente.setSenha(clienteDetails.getSenha());
				Cliente updatedCliente = clienteRepository.save(cliente);
				return ResponseEntity.ok(updatedCliente);
			}
	//Deletar um cliente
			@DeleteMapping("/cliente/{idclientes}")
			public ResponseEntity<Map<String, Boolean>> deleteCliente(@PathVariable int idclientes) {
				Cliente cliente = clienteRepository.findById(idclientes)
						.orElseThrow(() -> new ResourceNotFoundException("Cliente não localizado com id :" + idclientes));
				clienteRepository.delete(cliente);
				Map<String, Boolean> response = new HashMap<>();
				response.put("deletado", Boolean.TRUE);
				return ResponseEntity.ok(response);
			}
			
	}


