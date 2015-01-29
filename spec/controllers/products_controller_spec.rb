describe ProductsController do

  describe 'GET #show' do

    it "returns a PDF file" do
      get :show, id: 'product', format: 'pdf'
      expect(response.headers['Content-Type']).to have_content 'application/pdf'
    end

    it "fails to return a PDF file" do
      get :show, id: 'misnamed_product', format: 'xml'
      expect(response.headers['Content-Type']).not_to have_content 'application/pdf'
    end

  end

end
