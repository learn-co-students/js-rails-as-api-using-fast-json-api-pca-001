class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at#, :bird, :location
  # can use attributes to access related objects (bird and location), adding them alongside normal object attributes
  # However, here, we have no control over what attributes are included in the related objects, and so we get all the attributes of "bird" and "location"
  belongs_to :bird
  belongs_to :location
end
