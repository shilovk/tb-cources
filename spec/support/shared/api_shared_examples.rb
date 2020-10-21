shared_examples_for 'API public fields returnable' do
  it 'returns public fields' do
    fields.each do |attr|
      expect(resource_response[attr]).to eq resource.send(attr).as_json
    end
  end
end

shared_examples_for 'API private fields returnable' do
  it 'not returns private fields' do
    private_fields.each do |attr|
      expect(resource_response).to_not have_key(attr)
    end
  end
end

shared_examples_for 'API fields updatable' do
  it 'update fields' do
    update_fields.each do |attr|
      expect(resource_request_params[attr.to_sym]).to eq resource.send(attr).as_json
    end
  end
end
