ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email_address, :notes, :image

  index do
    selectable_column
    id_column
    column :full_name
    column :phone_number
    column :email_address
    column "Image" do |customer|
      if customer.image.attached?
        # Use main_app or Rails.application.routes.url_helpers
        image_tag main_app.url_for(customer.image), height: '50'
      else
        "No Image"
      end
    end
    actions
  end

  form do |f|
    f.inputs "Customer Details" do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end
end
