require 'rails_helper'

RSpec.describe "Admin::V1::SystemRequirements as :client", type: :request do
  let(:user) { create(:user, profile: :client) }

  context "GET /system_requirements" do
    let(:url) { "/admin/v1/system_requirements" }
    let!(:system_requirements) { create_list(:system_requirement, 5) }

    before(:each) { get url, headers: auth_header(user)}

    include_examples "forbidden access"
  end
=begin
  context "POST /categories" do
    let(:url) { "/admin/v1/categories" }
    let!(:categories) { create_list(:category, 5) }

    before(:each) { post url, headers: auth_header(user)}
    include_examples "forbidden access"
  end

  context "PATCH /categories/:id" do
    let(:category) { create(:category) }
    let(:url) { "/admin/v1/categories/#{category.id}" }

    before(:each) { patch url, headers: auth_header(user)}
    include_examples "forbidden access"
  end

  context "DELETE /categories" do
    let!(:category) { create(:category) }
    let(:url) { "/admin/v1/categories/#{category.id}" }

    before(:each) { delete url, headers: auth_header(user)}
    include_examples "forbidden access"
  end
=end
end
