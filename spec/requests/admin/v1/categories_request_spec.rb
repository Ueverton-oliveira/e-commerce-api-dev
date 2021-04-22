require 'rails_helper'

RSpec.describe "Admin::V1::Categories", type: :request do
  let(:user) { create(:user) }

  context "GET /categories" do
    let(:url) { "admin/v1/categories" }
    let!(:categories) { create_list(:category, 5) }

    it "return all Categories" do
      get url, headers: auth_header(user)
      expect(body_json['category']).to contain_exactly categories.as_json
    end
  end
end
