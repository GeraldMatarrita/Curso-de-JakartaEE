package org.geramatarr.apiservlet.webapp.headers.services;

import org.geramatarr.apiservlet.webapp.headers.models.Producto;

import java.util.List;
import java.util.Optional;

public interface ProductoService {
    List<Producto> listar();
    Optional<Producto> buscar(String nombre);
}
