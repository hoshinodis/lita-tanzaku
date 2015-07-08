require "spec_helper"

describe Lita::Handlers::Tanzaku, lita_handler: true do
  it { is_expected.to route('tanzaku') }
  it { is_expected.to route('tanzaku').to(:tanzaku) }
  it 'retrieve message "tanzaku"' do
    negaigoto = %w(┏┷┓
┃あ┃
┗━★)
    send_message('tanzaku あ')
    expect(negaigoto).to include(replies.last)
  end
end
