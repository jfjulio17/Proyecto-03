DROP DATABASE if exists base;
create database base;
use base;


-- Creación de la tabla Producto
CREATE TABLE Producto (
    idProducto INT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10, 2),
    descripcion TEXT,
     idProveedor INT ,
    FOREIGN KEY (idProveedor) REFERENCES Proveedor(idProveedor)
     
);

-- Creación de la tabla Proveedor
CREATE TABLE Proveedor (
    idProveedor INT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(200)
);

-- Creación de la tabla Inventario
CREATE TABLE Inventario (
    idProducto INT,
    cantidad INT,
    fechaInventario DATE,
    FOREIGN KEY (idProducto) REFERENCES Producto(idProducto)
);

-- Creación de la tabla Compra
CREATE TABLE Compra (
    idCompra INT PRIMARY KEY,
    idProducto INT,
    cantidad INT,
    fechaCompra DATE,
    
    FOREIGN KEY (idProducto) REFERENCES Producto(idProducto)
);









