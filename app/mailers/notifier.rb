class Notifier < ActionMailer::Base
	default :from  => 'fariba <taheri.cs11@gmail.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_received.subject
  #
  def order_received (order)
  	  @comment=order
 

  	  mail :to => order.email, :subject => 'Paramatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
  def order_shipped(order)
  	  @comment=order

  	  mail :to =>order.email, :subject => 'Paramatic Store Order Shipped'
    @greeting = "Hi"

    mail :to => "to@example.org"
  end
end

