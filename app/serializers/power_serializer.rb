class PowerSerializer < ActiveModel::Serializer
  attributes :id,:name ,:description
  
  def include_heros?
    @instance_options[:include_heros]
  end

  has_many :heros, if: :include_heros?
  
end
