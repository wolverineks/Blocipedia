class UsersController < ApplicationController
  def downgrade 


    current_user.update_attribute(:role, 'standard')

    #data-key=sk_test_GBW5y6gESTp3AhofMrA3dwar
  
    #customer = Stripe::Customer.retrieve("cus_3R1W8PG2DmsmM9")
    #customer.subscriptions.retrieve("sub_3R3PlB2YlJe84a").delete

    current_user.wikis.each do |wiki|
      wiki.update_attribute(:private, false)
    end

    redirect_to root_path
  end

end