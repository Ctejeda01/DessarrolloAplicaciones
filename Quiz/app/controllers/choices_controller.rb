class ChoicesController < ApplicationController
  def create
    #busca la pregunta a la que se añadiran opciones
    @question = Question.find(params[:question])
    #parametros tomados del formulario
    text = params[:text]
    correct = params[:correct] == '1'
    #se instancia new con los parametros
    new = Choise.create(:text, :correct => correct, :question_id =>@question)


    #verifica si la respuesta es correcta, si lo es se coloca la la respuesta a la preguta
    if new.correct
      @question.answer = new
    end

    #se redirecciona a la misma pagina con la pregunta seleccionada
    redirect_to question_path(@question)

  end


  def destroy
    #se busca la pregunta a la que se le eliminara la opcion
    @question =Question.find(params[:question])
    #se busca la opcion a eliminar
    @choise = Choice.find(params[:choise])
    #se elimina la opción
    @choise.destroy


    #se redirecciona a la pagina de la pregunta elegida para continuar editando
    redirect_to question_path(@question)
  end
end
