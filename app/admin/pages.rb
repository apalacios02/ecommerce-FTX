ActiveAdmin.register Page do
  permit_params :name, :content, :slug

  form do |f|
    f.inputs do
      f.input :name
      f.input :slug
      f.input :content
    end
    f.actions
  end
end
