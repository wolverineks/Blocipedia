class ChargesController < ApplicationController
  
def new

  @stripe_btn_data = {
    key: "#{ Rails.configuration.stripe[:publishable_key] }",
    description: "Premium Membership #{current_user.name}",
    amount: Amount.default
  }
end

def create

# Get the credit card details submitted by the form
  token = params[:stripeToken]

# Create a Customer for Subscription
  customer = Stripe::Customer.create(
    :source => token,
    :plan => "Premium Membership",
    :email => current_user.email
  )
 
  charge = Stripe::Charge.create(
    customer: customer.id, # Note -- this is NOT the user_id in your app
    currency: "usd",
    amount: Amount.default,
    statement_descriptor: "Blocipedia - Premium",
    description: "Premium Membership - #{current_user.email}"
  )
 
   # SUCCESS!
   
   current_user.update_attribute(:role, "premium")
   
   redirect_to edit_user_registration_path, flash: { notice: "Upgraded #{current_user.email} to Premium Membership! You can now make private wikis."}
 
 # Stripe will send back CardErrors, with friendly messages
 # when something goes wrong.
 # This `rescue block` catches and displays those errors.
 rescue Stripe::CardError => e
   flash[:error] = e.message
   redirect_to new_charge_path

end


def cancel

# Set your secret key: remember to change this to your live secret key in production
# See your keys here https://dashboard.stripe.com/account/apikeys

  @stripe_btn_data = {
    key: "#{ Rails.configuration.stripe[:publishable_key] }",
  }

  customer = Stripe::Customer.retrieve(
    :source => token,
  )

  customer.subscriptions.retrieve("Premium Membership").delete(:at_period_end => true) 

end

end
