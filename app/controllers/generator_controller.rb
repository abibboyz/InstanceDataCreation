class GeneratorController < ApplicationController
  def index
    render :json => data
  end

  def data
    [
      { source: "Microsoft", target: "Amazon" },
      { source: "Microsoft", target: "HTC" },
      { source: "Samsung", target: "Apple" },
      { source: "Motorola", target: "Apple" },
      { source: "Nokia", target: "Apple" },
      { source: "HTC", target: "Apple" },
      { source: "Kodak", target: "Apple" },
      { source: "Microsoft", target: "Barnes & Noble" },
      { source: "Microsoft", target: "Foxconn" },
      { source: "Oracle", target: "Google" },
      { source: "Apple", target: "HTC" },
      { source: "Microsoft", target: "Inventec" },
      { source: "Samsung", target: "Kodak" },
      { source: "LG", target: "Kodak" },
      { source: "RIM", target: "Kodak" },
      { source: "Sony", target: "LG" },
      { source: "Kodak", target: "LG" },
      { source: "Apple", target: "Nokia" },
      { source: "Qualcomm", target: "Nokia" },
      { source: "Apple", target: "Motorola" },
      { source: "Microsoft", target: "Motorola" },
      { source: "Motorola", target: "Microsoft" },
      { source: "Huawei", target: "ZTE" },
      { source: "Ericsson", target: "ZTE" },
      { source: "Kodak", target: "Samsung" },
      { source: "Apple", target: "Samsung" },
      { source: "Kodak", target: "RIM" },
      { source: "Nokia", target: "Qualcomm" }
    ]
  end
end
