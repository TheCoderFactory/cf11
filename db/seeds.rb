# encoding: UTF-8
user = Shoppe::User.create!(:first_name => 'admin', :last_name => 'admin', :email_address => 'admin@example.com', :password => 'password')
# # tax rates
tax_rate = Shoppe::TaxRate.create!(:name => "GST", :rate => 10.0)
# exempt_tax = Shoppe::TaxRate.create!(:name => "Exempt VAT", :rate => 0.0)

# delivery services

ds = Shoppe::DeliveryService.create!(:name => "Free Delivery", :code => 'FREE', :courier => 'AusPost', :tracking_url => '')
# ds.delivery_service_prices.create!(:code => 'Parcel', :min_weight => 0, :max_weight => 10, :price => 0.0, :cost_price => 0.0, :tax_rate => tax_rate)
# ds.delivery_service_prices.create!(:code => 'Parcel', :min_weight => 1, :max_weight => 5, :price => 8.0, :cost_price => 7.5, :tax_rate => tax_rate)
# ds.delivery_service_prices.create!(:code => 'Parcel', :min_weight => 5, :max_weight => 20, :price => 10.0, :cost_price => 9.50, :tax_rate => tax_rate)

# ds = Shoppe::DeliveryService.create!(:name => "Saturday Delivery", :code => 'NDSA16', :courier => 'AnyCourier', :tracking_url => 'http://trackingurl.com/track/{{consignment_number}}')
# ds.delivery_service_prices.create!(:code => 'Parcel', :min_weight => 0, :max_weight => 1, :price => 27.0, :cost_price => 24.00, :tax_rate => tax_rate)
# ds.delivery_service_prices.create!(:code => 'Parcel', :min_weight => 1, :max_weight => 5, :price => 29.0, :cost_price => 20.00, :tax_rate => tax_rate)
# ds.delivery_service_prices.create!(:code => 'Parcel', :min_weight => 5, :max_weight => 20, :price => 37.0, :cost_price => 32.00,:tax_rate => tax_rate)

# categories
cat1 = Shoppe::ProductCategory.create!(:name => 'Workshops')
cat2 = Shoppe::ProductCategory.create!(:name => 'Full Time Courses')
cat3 = Shoppe::ProductCategory.create!(:name => 'Part Time Courses')

# Locations
Shoppe::Location.create!(name: 'Coder Factory HQ', city: 'Sydney', street: '91 Campbell Street', suburb: 'Surry Hills')
Shoppe::Location.create!(name: 'River City Labs', city: 'Brisbane', street: 'Wickham Street', suburb: 'Fortitude Valley')
Shoppe::Location.create!(name: 'Depo8', city: 'Melbourne', street: ' Street', suburb: 'Prahran')
Shoppe::Location.create!(name: 'SpaceCubed', city: 'Perth', street: 'St Georges Tce', suburb: 'Perth')
Shoppe::Location.create!(name: 'Majoran Distillery', city: 'Adelaide', street: ' Street', suburb: 'Adelaide')
Shoppe::Location.create!(name: 'Canberra', city: 'Canberra', street: ' Street', suburb: 'Canberra')

# lorem = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

# pro1 = cat1.products.create!(:name => 'Web Design Weekend Workshop', :sku => 'WDWW15', :description => 'The web design workshop', :short_description => "You'll learn HTML", :weight => 0, :price => 360.0, :cost_price => 0.0, :tax_rate => tax_rate, :featured => true)
# # pro.default_image_file = get_file('web-design-weekend-workshop.jpg')
# pro1.save!

# puts 'product 1 saved: ' + pro1.name
# # pro.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# # pro.product_attributes.create!(:key => 'Manufacturer', :value => 'Yealink', :position => 1)
# # pro.product_attributes.create!(:key => 'Model', :value => 'T20P', :position => 1)
# # pro.product_attributes.create!(:key => 'Colour', :value => 'Black', :position => 1)
# # pro.product_attributes.create!(:key => 'Lines', :value => '3', :position => 1)
# # pro.product_attributes.create!(:key => 'Colour Screen?', :value => 'No', :position => 1)
# # pro.product_attributes.create!(:key => 'Power over ethernet?', :value => 'Yes', :position => 1)

# v1 = pro1.variants.create(:name => "Sydney 14/15 Feb 2015", :sku => "010WDWW15SYD", :price => 360.00, :tax_rate => tax_rate)
# # v1.default_image_file = get_file('snom-870-grey.jpg')
# v1.save!
# v1.product_attributes.create!(:key => 'location', :value => 'Sydney - Coder Factory HQ')
# v1.product_attributes.create!(:key => 'start_date', :value => '14-02-2015')
# v1.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 1: ' + v1.name

# vb = pro1.variants.create(:name => "Brisbane 21/22 Feb 2015", :sku => "015WDWW15BNE", :price => 360.00, :tax_rate => tax_rate)
# # vb.default_image_file = get_file('snom-870-grey.jpg')
# vb.save!
# vb.product_attributes.create!(:key => 'location', :value => 'Brisbane - River City Labs')
# vb.product_attributes.create!(:key => 'start_date', :value => '21-02-2015')
# vb.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 1: ' + vb.name

# v2 = pro1.variants.create(:name => "Melbourne 21/22 Mar 2015", :sku => "020WDWW15MEL", :price => 360.00, :tax_rate => tax_rate)
# # v2.default_image_file = get_file('snom-870-grey.jpg')
# v2.save!
# v2.product_attributes.create!(:key => 'location', :value => 'Melbourne')
# v2.product_attributes.create!(:key => 'start_date', :value => '21-03-2015')
# v2.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 1: ' + v2.name

# v3 = pro1.variants.create(:name => "Sydney 11/12 Apr 2015", :sku => "030WDWW15SYD", :price => 360.00, :tax_rate => tax_rate)
# # v3.default_image_file = get_file('snom-870-grey.jpg')
# v3.save!
# v3.product_attributes.create!(:key => 'location', :value => 'Sydney - Coder Factory HQ')
# v3.product_attributes.create!(:key => 'start_date', :value => '11-04-2015')
# v3.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 1: ' + v3.name

# v4 = pro1.variants.create(:name => "Brisbane 20/21 Jun 2015", :sku => "040WDWW15BNE", :price => 360.00, :tax_rate => tax_rate)
# # v4.default_image_file = get_file('snom-870-grey.jpg')
# v4.save!
# v4.product_attributes.create!(:key => 'location', :value => 'Brisbane - River City Labs')
# v4.product_attributes.create!(:key => 'start_date', :value => '20-06-2015')
# v4.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 1: ' + v4.name

# v5 = pro1.variants.create(:name => "Melbourne 18/19 Jul 2015", :sku => "050WDWW15MEL", :price => 360.00, :tax_rate => tax_rate)
# # v5.default_image_file = get_file('snom-870-grey.jpg')
# v5.save!
# v5.product_attributes.create!(:key => 'location', :value => 'Melbourne')
# v5.product_attributes.create!(:key => 'start_date', :value => '18-07-2015')
# v5.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 1: ' + v5.name

# v6 = pro1.variants.create(:name => "Sydney 8/9 Aug 2015", :sku => "060WDWW15SYD", :price => 360.00, :tax_rate => tax_rate)
# # v6.default_image_file = get_file('snom-870-grey.jpg')
# v6.save!
# v6.product_attributes.create!(:key => 'location', :value => 'Sydney - Coder Factory HQ')
# v6.product_attributes.create!(:key => 'start_date', :value => '08-08-2015')
# v6.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 1: ' + v6.name

# v7 = pro1.variants.create(:name => "Sydney 10/11 Oct 2015", :sku => "070WDWW15SYD", :price => 360.00, :tax_rate => tax_rate)
# # v7.default_image_file = get_file('snom-870-grey.jpg')
# v7.save!
# v7.product_attributes.create!(:key => 'location', :value => 'Sydney - Coder Factory HQ')
# v7.product_attributes.create!(:key => 'start_date', :value => '10-10-2015')
# v7.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 1: ' + v7.name

# v8 = pro1.variants.create(:name => "Brisbane 17/18 Oct 2015", :sku => "080WDWW15BNE", :price => 360.00, :tax_rate => tax_rate)
# # v8.default_image_file = get_file('snom-870-grey.jpg')
# v8.save!
# v8.product_attributes.create!(:key => 'location', :value => 'Brisbane - River City Labs')
# v8.product_attributes.create!(:key => 'start_date', :value => '17-10-2015')
# v8.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 1: ' + v8.name

# v9 = pro1.variants.create(:name => "Melbourne 14/15 Nov 2015", :sku => "090WDWW15MEL", :price => 360.00, :tax_rate => tax_rate)
# # v9.default_image_file = get_file('snom-870-grey.jpg')
# v9.save!
# v9.product_attributes.create!(:key => 'location', :value => 'Melbourne')
# v9.product_attributes.create!(:key => 'start_date', :value => '14-11-2015')
# v9.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 1: ' + v9.name

# pro2 = cat1.products.create!(:name => 'Learn To Code Weekend Workshop', :sku => 'L2C15', :description => 'The learn to code workshop', :short_description => "You'll learn web programming", :weight => 0, :price => 360.0, :cost_price => 0.0, :tax_rate => tax_rate, :featured => true)
# # pro.default_image_file = get_file('web-design-weekend-workshop.jpg')
# pro2.save!
# # v2 = pro.variants.create(:name => "Black", :sku => "SM-870-BLK", :price => 230.00, :cost_price => 220, :tax_rate => tax_rate, :weight => 1.35)
# # v2.default_image_file = get_file('snom-870-blk.jpg')
# # v2.save!
# # v2.stock_level_adjustments.create(:description => 'Initial Stock', :adjustment => 2)

# v01 = pro2.variants.create(:name => "Sydney 21/22 Feb 2015", :sku => "010L2C15SYD", :price => 360.00, :tax_rate => tax_rate)
# v01.save!
# v01.product_attributes.create!(:key => 'location', :value => 'Sydney - Coder Factory HQ')
# v01.product_attributes.create!(:key => 'start_date', :value => '21-02-2015')
# v01.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 2: ' + v01.name

# v02 = pro2.variants.create(:name => "Sydney 21/22 Mar 2015", :sku => "020L2C15SYD", :price => 360.00, :tax_rate => tax_rate)
# v02.save!
# v02.product_attributes.create!(:key => 'location', :value => 'Sydney - Coder Factory HQ')
# v02.product_attributes.create!(:key => 'start_date', :value => '21-03-2015')
# v02.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 2: ' + v02.name

# v03 = pro2.variants.create(:name => "Adelaide 11/12 Apr 2015", :sku => "030L2C15ADL", :price => 360.00, :tax_rate => tax_rate)
# v03.save!
# v03.product_attributes.create!(:key => 'location', :value => 'Adelaide - Majoran Distillery')
# v03.product_attributes.create!(:key => 'start_date', :value => '11-04-2015')
# v03.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 2: ' + v03.name

# v04 = pro2.variants.create(:name => "Brisbane 18/19 Apr 2015", :sku => "040L2C15BNE", :price => 360.00, :tax_rate => tax_rate)
# v04.save!
# v04.product_attributes.create!(:key => 'location', :value => 'Brisbane - River City Labs')
# v04.product_attributes.create!(:key => 'start_date', :value => '18-04-2015')
# v04.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 2: ' + v04.name

# v05 = pro2.variants.create(:name => "Melbourne 2/3 May 2015", :sku => "050L2C15MEL", :price => 360.00, :tax_rate => tax_rate)
# v05.save!
# v05.product_attributes.create!(:key => 'location', :value => 'Melbourne')
# v05.product_attributes.create!(:key => 'start_date', :value => '02-05-2015')
# v05.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 2: ' + v05.name

# v06 = pro2.variants.create(:name => "Sydney 23/24 May 2015", :sku => "060L2C15SYD", :price => 360.00, :tax_rate => tax_rate)
# v06.save!
# v06.product_attributes.create!(:key => 'location', :value => 'Sydney - Coder Factory HQ')
# v06.product_attributes.create!(:key => 'start_date', :value => '23-05-2015')
# v06.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 2: ' + v06.name

# v07 = pro2.variants.create(:name => "Perth 30/31 May 2015", :sku => "070L2C15PER", :price => 360.00, :tax_rate => tax_rate)
# v07.save!
# v07.product_attributes.create!(:key => 'location', :value => 'Perth - SpaceCubed')
# v07.product_attributes.create!(:key => 'start_date', :value => '30-05-2015')
# v07.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 2: ' + v07.name

# v08 = pro2.variants.create(:name => "Canberra 27/28 Jun 2015", :sku => "080L2C15CBR", :price => 360.00, :tax_rate => tax_rate)
# v08.save!
# v08.product_attributes.create!(:key => 'location', :value => 'Canberra')
# v08.product_attributes.create!(:key => 'start_date', :value => '27-06-2015')
# v08.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 2: ' + v08.name

# v09 = pro2.variants.create(:name => "Sydney 25/26 Jul 2015", :sku => "090L2C15SYD", :price => 360.00, :tax_rate => tax_rate)
# v09.save!
# v09.product_attributes.create!(:key => 'location', :value => 'Sydney - Coder Factory HQ')
# v09.product_attributes.create!(:key => 'start_date', :value => '25-07-2015')
# v09.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 2: ' + v09.name

# v010 = pro2.variants.create(:name => "Adelaide 12/13 Sep 2015", :sku => "100L2C15ADL", :price => 360.00, :tax_rate => tax_rate)
# v010.save!
# v010.product_attributes.create!(:key => 'location', :value => 'Adelaide - Majoran Distillery')
# v010.product_attributes.create!(:key => 'start_date', :value => '12-09-2015')
# v010.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 2: ' + v010.name

# v011 = pro2.variants.create(:name => "Sydney 26/27 Sep 2015", :sku => "110L2C15SYD", :price => 360.00, :tax_rate => tax_rate)
# v011.save!
# v011.product_attributes.create!(:key => 'location', :value => 'Sydney - Coder Factory HQ')
# v011.product_attributes.create!(:key => 'start_date', :value => '26-09-2015')
# v011.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 2: ' + v011.name

# v012 = pro2.variants.create(:name => "Melbourne 3/4 Oct 2015", :sku => "120L2C15MEL", :price => 360.00, :tax_rate => tax_rate)
# v012.save!
# v012.product_attributes.create!(:key => 'location', :value => 'Melbourne')
# v012.product_attributes.create!(:key => 'start_date', :value => '03-10-2015')
# v012.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 2: ' + v012.name

# v013 = pro2.variants.create(:name => "Perth 24/25 Oct 2015", :sku => "130L2C15PER", :price => 360.00, :tax_rate => tax_rate)
# v013.save!
# v013.product_attributes.create!(:key => 'location', :value => 'Perth - SpaceCubed')
# v013.product_attributes.create!(:key => 'start_date', :value => '24-10-2015')
# v013.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 2: ' + v013.name

# v014 = pro2.variants.create(:name => "Sydney 21/22 Nov 2015", :sku => "140L2C15SYD", :price => 360.00, :tax_rate => tax_rate)
# v014.save!
# v014.product_attributes.create!(:key => 'location', :value => 'Sydney - Coder Factory HQ')
# v014.product_attributes.create!(:key => 'start_date', :value => '21-11-2015')
# v014.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 2: ' + v014.name

# v015 = pro2.variants.create(:name => "Canberra 28/29 Nov 2015", :sku => "150L2C15CBR", :price => 360.00, :tax_rate => tax_rate)
# v015.save!
# v015.product_attributes.create!(:key => 'location', :value => 'Canberra')
# v015.product_attributes.create!(:key => 'start_date', :value => '28-11-2015')
# v015.stock_level_adjustments.create(:description => 'Places', :adjustment => 12)
# puts 'variant added for product 2: ' + v015.name