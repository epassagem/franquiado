class Interessado < ActiveRecord::Base
  self.per_page = 10

 has_many :cart, autosave: true
 accepts_nested_attributes_for :cart
 
 has_many :planilha, autosave: true
 accepts_nested_attributes_for :planilha
 
 has_many :cof, autosave: true
 accepts_nested_attributes_for :cof

 has_many :carteira_prof, autosave: true
 accepts_nested_attributes_for :carteira_prof
 
  has_many :cnh, autosave: true
 accepts_nested_attributes_for :cnh
 
  has_many :comp_end, autosave: true
 accepts_nested_attributes_for :comp_end
 
  has_many :cpf, autosave: true
 accepts_nested_attributes_for :cpf
 
  has_many :cronograma, autosave: true
 accepts_nested_attributes_for :cronograma
 
  has_many :dados_banco, autosave: true
 accepts_nested_attributes_for :dados_banco
 
  has_many :doc_fiscais_coring, autosave: true
 accepts_nested_attributes_for :doc_fiscais_coring
 
  has_many :irpf, autosave: true
 accepts_nested_attributes_for :irpf
 
  has_many :irpj, autosave: true
 accepts_nested_attributes_for :irpj
 
   has_many :lembrete, autosave: true
 accepts_nested_attributes_for :lembrete
 
   has_many :observ, autosave: true
 accepts_nested_attributes_for :observ
 
   has_many :plan_resumo, autosave: true
 accepts_nested_attributes_for :plan_resumo
 
   has_many :proj_arquitetonico, autosave: true
 accepts_nested_attributes_for :proj_arquitetonico
 
   has_many :redacao, autosave: true
 accepts_nested_attributes_for :redacao
 
   has_many :rg, autosave: true
 accepts_nested_attributes_for :rg
 
   has_many :serasa, autosave: true
 accepts_nested_attributes_for :serasa
 
   has_many :spc, autosave: true
 accepts_nested_attributes_for :spc
 
 
 has_many :socio_carteira_prof, autosave: true
 accepts_nested_attributes_for :socio_carteira_prof
 
  has_many :socio_cnh, autosave: true
 accepts_nested_attributes_for :socio_cnh
 
  has_many :socio_comp_end, autosave: true
 accepts_nested_attributes_for :socio_comp_end
 
  has_many :socio_cpf, autosave: true
 accepts_nested_attributes_for :socio_cpf
 
   has_many :socio_dados_banco, autosave: true
 accepts_nested_attributes_for :socio_dados_banco
 
  has_many :socio_irpf, autosave: true
 accepts_nested_attributes_for :socio_irpf
 
  has_many :socio_irpj, autosave: true
 accepts_nested_attributes_for :socio_irpj
 
   has_many :socio_rg, autosave: true
 accepts_nested_attributes_for :socio_rg
 
   has_many :socio_serasa, autosave: true
 accepts_nested_attributes_for :socio_serasa
 
    has_many :socio_spc, autosave: true
 accepts_nested_attributes_for :socio_spc
 
  has_many :socio_doc_fiscais_coring, autosave: true
  accepts_nested_attributes_for :socio_doc_fiscais_coring
  
  has_many :pagto_taxa, autosave: true
  accepts_nested_attributes_for :pagto_taxa
 
  has_many :pre_contrato, autosave: true
  accepts_nested_attributes_for :pre_contrato

  has_many :operador, autosave: true
  accepts_nested_attributes_for :operador
  
  has_many :consultor, autosave: true
  accepts_nested_attributes_for :consultor

  has_many :professor, autosave: true
  accepts_nested_attributes_for :professor
  
  has_many :coordenador, autosave: true
  accepts_nested_attributes_for :coordenador
  
  has_many :val_ponto, autosave: true
  accepts_nested_attributes_for :val_ponto

  has_many :docs_ponto, autosave: true
  accepts_nested_attributes_for :docs_ponto


  has_many :aprov_proj, autosave: true
  accepts_nested_attributes_for :aprov_proj
  
  has_many :fotos_proj, autosave: true
  accepts_nested_attributes_for :fotos_proj

  has_many :aprov_estab, autosave: true
  accepts_nested_attributes_for :aprov_estab
  
  has_many :fotos_estab, autosave: true
  accepts_nested_attributes_for :fotos_estab
  
  has_many :contrato, autosave: true
  accepts_nested_attributes_for :contrato
  
  has_many :market, autosave: true
  accepts_nested_attributes_for :market
  
  has_many :inauguracao, autosave: true
  accepts_nested_attributes_for :inauguracao
  
  has_many :fotos_in, autosave: true
  accepts_nested_attributes_for :fotos_in

end
