describe ManageIQ::Providers::Microsoft::InfraManager::VmOrTemplateShared::Scanning do
  describe ".scan_timeout_adjustment_multiplier" do
    it "when called for Template class, returns numeric value" do
      expect(ManageIQ::Providers::Microsoft::InfraManager::Template.scan_timeout_adjustment_multiplier).to be_kind_of(Numeric)
    end

    it "when called for Vm class, returns numeric value" do
      expect(ManageIQ::Providers::Microsoft::InfraManager::Vm.scan_timeout_adjustment_multiplier).to be_kind_of(Numeric)
    end
  end

  describe "#scan_timeout_adjustment_multiplier" do
    it "when called for Vm instance, returns numeric value" do
      vm = ManageIQ::Providers::Microsoft::InfraManager::Vm.new
      expect(vm.scan_timeout_adjustment_multiplier).to be_kind_of(Numeric)
    end

    it "when called for Template instance, returns numeric value" do
      template = ManageIQ::Providers::Microsoft::InfraManager::Template.new
      expect(template.scan_timeout_adjustment_multiplier).to be_kind_of(Numeric)
    end
  end
end
