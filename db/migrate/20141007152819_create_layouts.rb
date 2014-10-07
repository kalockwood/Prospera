class CreateLayouts < ActiveRecord::Migration
  def change
    create_table :layouts do |t|
    	t.string :nombres
      t.string :celular
      t.string :email
      t.string :ultima_empresa
      t.string :nombre_referencia_1
      t.string :telefono_referencia_1
      t.string :nombre_referencia_2
      t.string :telefono_referencia_2
      t.string :nombre_referencia_3
      t.string :telefono_referencia_3
      t.string :rfc
      t.string :lugar_nacimiento
      t.string :escolaridad
      t.string :ingreso_esperado
      t.string :actualmente_vive_con
      t.string :personas_dependen
      t.string :estado_civil
      t.string :deporte
      t.string :sindicato
      t.string :seguro_vida
      t.string :ingreso_actual
      t.string :gastos_mensuales
      t.string :demanda
      t.string :fecha_nacimiento
      t.string :apellido_paterno
    t.string :apellido_materno
    t.string :certificado_prepa
    t.string :colonia
    t.string :calle_num
    t.string :municipio
    t.string :estado
    t.string :cp
    t.string :tel_fijo

      t.timestamps
    end
  end
end
