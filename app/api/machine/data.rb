module Machine
  class Data < Grape::API

    resource :load_money do
      desc "Load Money"
      params do
        requires :amount, :type => Hash do
          optional :one, allow_blank: true, type: Integer
          optional :two, allow_blank: true, type: Integer
          optional :five, allow_blank: true, type: Integer
          optional :ten, allow_blank: true, type: Integer
          optional :twenty_five, allow_blank: true, type: Integer
          optional :fifty, allow_blank: true, type: Integer
        end
      end
      put do
        Atm.first.load(params[:amount])
      end

    end

    resource :withdrawal_money do
      desc "Withdrawal money"
      params do
        requires :amount, type: Integer
      end
      put do
        Atm.first.withdrawal(params[:amount])
      end

    end

    resource :balance do
      desc "Balance"

      get do
        Atm.first.balance
      end

    end

  end
end