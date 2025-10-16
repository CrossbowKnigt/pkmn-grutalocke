class Scene_Map
  alias piano_update update
  def update
    piano_update
    if Input.triggerex?(0x31)
    elsif Input.triggerex?(0x32)
    elsif Input.triggerex?(0x33)
    elsif Input.triggerex?(0x34)
    elsif Input.triggerex?(0x35)
    elsif Input.triggerex?(0x36)
    elsif Input.triggerex?(0x37)
    elsif Input.triggerex?(0x38)
    elsif Input.triggerex?(0x39)
    elsif Input.triggerex?(0x30)
    elsif Input.triggerex?(:R)
    elsif Input.triggerex?(:T)
    elsif Input.triggerex?(:Y)
    elsif Input.triggerex?(:U)
    elsif Input.triggerex?(:I)
    elsif Input.triggerex?(:O)
    elsif Input.triggerex?(:P)
    end
  end
end