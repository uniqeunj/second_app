class NotesController < ApplicationController
  # Create(사용자가 작성하는 곳)
  def new
   @token = form_authenticity_token
  end
  # 입력을 받아서 처리하는 곳
  
  def create
  note = Note.new
  # params는 get또는 post의 값을 받는 주머니
  note.title = params[:input_title]
  note.content = params[:input_content]
  #  save하는 순간 고유의 id가 생김
  note.save
  puts note
  # note/new로 돌아가라
  redirect_to "/notes/#{note.id}"
  end
  
  #Read
  def index
    # 사용자들에게 보여져야 하기때문에 @표시를 붙인다
    @notes = Note.all
  end
  
  def show
    @note = Note.find params[:id]
  end
  
  #update
  def edit
    @note = Note.find params[:id]
    @token = form_authenticity_token

  end
  
  def update
    note = Note.find params[:id]
    note.title = params[:input_title]
    note.content= params[:input_content]
    note.save
    redirect_to "/notes/#{note.id}"
  end
  
  #destroy
  def destroy
    @note=Note.find params[:id]
    @note.destroy
    redirect_to '/notes'
  end
end
