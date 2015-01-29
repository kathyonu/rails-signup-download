describe ProductsController, type: :controller do

  describe 'GET #show' do

    it "returns a PDF file" do
      get :show, id: 'product', format: 'pdf'
      expect(response.headers['Content-Type']).to have_content 'application/pdf'
    end

    it "fails to return a PDF formatted file" do
      get :show, id: 'product', format: 'xml'
      expect(response.headers['Content-Type']).not_to have_content 'application/pdf'
    end

    it "fails to return an improperly named file" do
      get :show, id: '3a4b', format: 'pdf'
      expect(response.body).to match(/You need to sign in or sign up before continuing/)
    end
  end

end
