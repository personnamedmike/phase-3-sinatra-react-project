class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  post "/add_expense" do
    # binding.pry
    expense = Expense.create(
      description: params[:description],
      monthly: params[:monthly],
      annual: params[:annual],
      frequency: params[:frequency],
      due_date: params[:due_date],
      notes: params[:notes]
    )
    expense.to_json
  end

  post "/add_income" do
    binding.pry
    income = Income.create(
      description: params[:description],
      amount: params[:amount]
    )
    income.to_json
  end

end
