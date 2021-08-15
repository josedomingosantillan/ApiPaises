class Paise < ApplicationRecord

  @paises

  def self.sizePaises
    if @paises.nil?
      return 0
    else
      return @paises.length
    end
  end

  def self.loadPaises
    paises = []
    estados = []
    Paise.order('name').each do |pais|
      estado = Estado.select(:name, :pais).where("pais like '%#{pais.name.squish}%'")
      if estado.present?
        estado.each do |datos|
          estados.push(nombre: datos.name.gsub("\t", ''))
        end
        paises.push({id: pais.id, pais: pais.name.gsub("\t", ''), capital: pais.capital.gsub("\t", ''), continente: pais.continente.gsub("\t", ''), estados: estados})
        estados = []
      else
        paises.push({id: pais.id, pais: pais.name.gsub("\t", ''), capital: pais.capital.gsub("\t", ''), continente: pais.continente.gsub("\t", '')})
      end
      @paises = paises
    end
  end

  def self.getPaises
    return @paises
  end

  def self.pais(id)
    pais = Paise.find(id)
    paises = []
    estados = []
    estado = Estado.select(:name, :pais).where("pais like '%#{pais.name.squish}%'")
    if estado.present?
      estado.each do |datos|
        estados.push(nombre: datos.name.gsub("\t", ''))
      end
      paises.push({id: pais.id, pais: pais.name.gsub("\t", ''), capital: pais.capital.gsub("\t", ''), continente: pais.continente.gsub("\t", ''), estados: estados})
      estados = []
    else
      paises.push({id: pais.id, pais: pais.name.gsub("\t", ''), capital: pais.capital.gsub("\t", ''), continente: pais.continente.gsub("\t", '')})
    end
    return paises
  end
end
