package org.geramatarr.apiservlet.webapp.headers.services;

import org.geramatarr.apiservlet.webapp.headers.models.Producto;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

public class ProductoServiceImp implements ProductoService{
    @Override
    public List<Producto> listar() {
        return Arrays.asList(new Producto(1L, "notebook", "computación", 175000),
                new Producto(2L, "mesa escritorio", "oficina", 100000),
                new Producto(3L, "teclado mecanico", "computación", 40000));
    }

    @Override
    public Optional<Producto> buscar(String nombre) {
        return listar().stream().filter(p -> {
            if (nombre == null || nombre.isBlank()) {
                return false;
            }
            return p.getNombre().contains(nombre);
        }).findFirst();
    }
}
