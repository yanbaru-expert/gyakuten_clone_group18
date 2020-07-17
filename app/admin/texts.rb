ActiveAdmin.register Text do
  permit_params :genre, :title, :content, :image

  form do |f|
    f.inputs "Texts" do
      f.input :title
      f.input :image
    end
    f.actions
  end
  
  show do |item_image|
    attributes_table do
      row :title
      # show画面で画像を表示するためのタグを追加
      row :image do
        image_tag(text.image.url) if text.image?
      end
    end
  end    
end
