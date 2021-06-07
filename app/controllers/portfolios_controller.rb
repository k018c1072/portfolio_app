class PortfoliosController < ApplicationController
    def index
        @portfolios = Portfolio.paginate(page: params[:page], per_page: 5)
    end

    def new
        @portfolio = Portfolio.new
    end

    def create
        @portfolio = current_user.portfolios.build(portfolio_params)
        if @portfolio.save
            redirect_to root_path
        else
            render 'static_pages/home'
        end
    end

    private

        def portfolio_params
            params.require(:portfolio).permit(:title, :description, :url)
        end


end
