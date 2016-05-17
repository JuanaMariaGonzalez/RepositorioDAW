json.array!(@libros) do |libro|
  json.extract! libro, :id, :titulo_libro, :autor, :editorial, :anio
  json.url libro_url(libro, format: :json)
end
