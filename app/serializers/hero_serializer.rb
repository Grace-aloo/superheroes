class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name ,:super_name

  def include_powers?
    @instance_options[:include_powers]
  end

  has_many :powers, if: :include_powers?
end
