module InstrumentsHelper
  def show_instrument(instrument, instrument_name, instrument_model, instrument_brand, instrument_price, instrument_photo, type_product)
    if instrument.product_type.type_name == type_product
      content_tag(:div, class:'col mb-5 hover-shadow d-flex justify-content-start p-0 mx-2', style:'max-width:240px;max-height:550px;') do
        concat(content_tag(:div, class:'card h-100') do
          if instrument_photo.attached?
            concat image_tag instrument_photo, class: 'card-img-top', style: 'height:350px;width:auto;' if instrument_photo.attached?
          else
            concat(content_tag(:img, '', class:'card-img-top',style:'height:350px;width:238px;background-color:gray;border:solid 1px gray;'))
          end

          concat(content_tag(:div, class:'card-body p-4') do
            concat(content_tag(:div, class:'text-center') do
              concat(content_tag(:h5, instrument_name + ", " + instrument_model +" "+ instrument_brand, class:'fw-bolder'))
              concat(content_tag(:div, class:'d-flex justify-content-center small text-warning mb-2') do
                concat(content_tag(:div, '', class:'bi-star-fill'))
                concat(content_tag(:div, '', class:'bi-star-fill'))
                concat(content_tag(:div, '', class:'bi-star-fill'))
                concat(content_tag(:div, '', class:'bi-star-fill'))
                concat(content_tag(:div, '', class:'bi-star-fill'))
              end)

              concat(content_tag(:p, "Price: R$ " + instrument_price.to_s, class:'card-text'))
            end)
          end)
        end)
        concat link_to '', shop_path(instrument), class:'mt-auto stretched-link'
      end
    elsif type_product == ''
      content_tag(:div, class:'col mb-5 hover-shadow d-flex justify-content-start p-0 mx-2', style:'max-width:240px;max-height:550px;') do
        concat(content_tag(:div, class:'card h-100') do
          if instrument_photo.attached?
            concat image_tag instrument_photo, class: 'card-img-top', style: 'height:350px;width:auto;' if instrument_photo.attached?
          else
            concat(content_tag(:img, '', class:'card-img-top',style:'height:350px;width:238px;background-color:gray;border:solid 1px gray;'))
          end

          concat(content_tag(:div, class:'card-body p-4') do
            concat(content_tag(:div, class:'text-center') do
              concat(content_tag(:h5, instrument_name + ", " + instrument_model +" "+ instrument_brand, class:'fw-bolder'))
              concat(content_tag(:div, class:'d-flex justify-content-center small text-warning mb-2') do
                concat(content_tag(:div, '', class:'bi-star-fill'))
                concat(content_tag(:div, '', class:'bi-star-fill'))
                concat(content_tag(:div, '', class:'bi-star-fill'))
                concat(content_tag(:div, '', class:'bi-star-fill'))
                concat(content_tag(:div, '', class:'bi-star-fill'))
              end)

              concat(content_tag(:p, "Price: R$ " + instrument_price.to_s, class:'card-text'))
            end)
          end)
        end)
        concat link_to '', shop_path(instrument), class:'mt-auto stretched-link'
      end
    end
  end
end
