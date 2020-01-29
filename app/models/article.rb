class Article < ApplicationRecord
  validates :name, presence: { message: "El Nombre del Producto no puede quedar vacio" }
	validates :brand, presence: { message: "La Marca del Producto no puede quedar vacia" }
  validates :price, presence: { message: "El Producto debe tener un precio" }
  validates :quantity, presence: { message: "El Producto debe tener una cantidad" } 
end
