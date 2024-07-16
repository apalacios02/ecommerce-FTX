ActiveAdmin.register Customer do

  filter :province_id
  permit_params :name, :email, :password, :address, :phone, :province_id

end
