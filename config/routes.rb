Rails.application.routes.draw do
  post 'calculate_imc', to: 'calculations#calculate_imc'
end
