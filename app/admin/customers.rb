ActiveAdmin.register Customer do

  permit_params :name, :email, :password, :address, :phone

end
