ActiveAdmin.register Text do
  permit_params :genre, :title, :content, :image

  form do |f|
    f.inputs "Texts" do
      f.input :genre
      f.input :title
      f.input :content
      f.input :image
    end
    f.actions
  end
  
  show do |item_image|
    attributes_table do
      row :genre
      row :title
      row :content
      row :image do
        image_tag(text.image.url) if text.image?
      end
    end
  end    
end
