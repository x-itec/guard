shared_examples_for 'interactor enabled' do
  it 'enables the interactor' do
    expect(Guard::Interactor).to receive(:new).with(false)

    Guard.send :interactor
  end
end

shared_examples_for 'interactor disabled' do
  it 'disables the interactor' do
    expect(Guard::Interactor).to receive(:new).with(true)

    Guard.send :interactor
  end
end

shared_examples_for 'notifier enabled' do
  it 'enables the notifier' do
    expect(Guard::Notifier).to receive(:turn_on)
    Guard.send :_setup_notifier
  end
end

shared_examples_for 'notifier disabled' do
  it 'disables the notifier' do
    expect(Guard::Notifier).to receive(:turn_off)
    Guard.send :_setup_notifier
  end
end
