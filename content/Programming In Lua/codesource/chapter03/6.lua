function volume_of_right_circular_cone (height, angle)
    radius = height * math.tan(angle * math.pi / 180 )
    return math.pi * (radius ^ 2) * height / 3
end

print(volume_of_right_circular_cone(10, 30))
