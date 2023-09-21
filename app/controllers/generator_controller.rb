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
    ]
  end
end
