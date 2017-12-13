temp = self.all.find(name)
if !temp.is_a?(Artist)
  self.create(name)
else
  temp
end

def self.find(name)
  @@all.find do |artist|

  end
end
