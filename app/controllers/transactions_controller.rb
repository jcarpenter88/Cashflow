class TransactionsController < ApplicationController
  
  # GET /transactions
  def index
    @transactions = current_user.transactions.all
  end

  # GET /transactions/1
  def show
    @transaction = Transaction.find(params[:id])
  end

  # GET /transactions/new
  def new
    @transaction = Transaction.new
  end

  # GET /transactions/1/edit
  def edit
    @transaction = Transaction.find(params[:id])
  end

  # POST /transactions
  def create
    @transaction = Transaction.new(params[:transaction])
    @transaction.user = current_user
    
    if @transaction.save
      flash[:notice] = "You have created a new Transaction"
      redirect_to transactions_path
    else
      render :new
    end
  end

  # PUT /transactions/1
  def update
    @transaction = Transaction.find(params[:id])
    
    if @transaction.update_attributes params[:transaction]
      redirect_to @transaction
    else
      render :edit
    end 
  end

  # DELETE /transactions/1
  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
  end
end
