require 'rfm'
class LayoutsController < ApplicationController
	def create
    @layout = Layout.new(params[:layout])

    respond_to do |format|
      if @layout.save
	    fm = Rfm::Server.new(:host => "portal.veseguro.com",
	                        :account_name => "form",
	                        :password => "form",
	                        :database => "Astro V1009",
	                        :ssl => false)
	  	@db = fm["Astro V1009"]["GUI_PROSPECTOS"] 
	  	@rec = @db.create({:nombres => @layout.nombres, 
	  						:apellido_paterno => @layout.apellido_paterno, 
	  						:apellido_materno => @layout.apellido_materno, 
	  						:celular => @layout.celular:email, 
	  						:ultima_empresa_en_la_que_laboro => @layouts.ultima_empresa,
	  						:referencia_personal_1__nombre => @layouts.nombre_referencia_1,
	  						:referencia_personal_1_telefono => @layouts.telefono_referencia_1,
	  						:referencia_personal_2_nombre   => @layouts.nombre_referencia_2,
	  						:referencia_personal_2_telefono => @layouts.telefono_referencia_2,
	  						:referencia_personal_3_nombre => @layouts.nombre_referencia_3,
	  						:referencia_personal_3_telefono => @layouts.telefono_referencia_3,
	  						:rfc => @layouts.rfc,
	  						:lugar_de_nacimiento => @layouts.lugar_nacimiento,
	  						:escolaridad => @layouts.escolaridad,
	  						:ingresos_mensuales_esperados => @layouts.ingreso_esperado,
	  						:actualmente_vive_con => @layouts.actualmente_vive_con,
	  						:personas_que_dependen_de_usted => @layouts.personas_dependen,
	  						:estado_civil => @layouts.estado_civil,
	  						:participa_usted_algun_deporte => @layouts.deporte,
	  						:ha_estado_afiliado_a_algun_sindicato => @layouts.sindicato,
	  						:tiene_seguro_de_vida => @layouts.seguro_vida,
	  						:ingresos_actuales_mensuales_aproximados => @layouts.ingreso_actual,
	  						:a_cuanto_ascienden_aproximadamente_sus_gastos_mensuales => @layouts.gastos_mensuales,
	  						:ha_sido_parte_de_una_demanda => @layouts.demanda,
	  						:fecha_nacimiento => @layouts.fecha_nacimiento,
	  						:tiene_certificado_de_prepa => @layouts.certificado_prepa,
	  						:colonia => @layouts.colonia, 
	  						:domicilio_calle_y_numero => @layouts.calle_num,
	  						:municipio_o_delegacion => @layouts.municipio,
	  						:estado => @layouts.estado,
	  						:codigo_postal => @layouts.cp,
	  						:telefono_fijo => @layouts.tel_fijo})
	  	 

	  	
        format.html { redirect_to root_path }
        format.json { render json: @layout, status: :created, location: @layout }
      else
        format.html { render action: "new" }
        format.json { render json: @layout.errors, status: :unprocessable_entity }
      end
    end
  end




end