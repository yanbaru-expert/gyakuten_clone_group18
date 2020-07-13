ActiveAdmin.register Book do
  permit_params :title, :image

  form do |f|
    f.inputs "Books" do
      f.input :title
      f.input :image, :as => :file
    end
    f.actions
  end
  
  show do |item_image|
    attributes_table do
      row :title
      # show画面で画像を表示するためのタグを追加
      row :image do
        image_tag(book.image.url)
      end
    end
  end
end