[Mesh]
  [copy1]
    type = ElementGenerator
    nodal_positions = '1 1 0
                       1 2 0
                       2 2 0
                       2 1 0'
    element_connectivity = '0 1 2 3'
    elem_type = 'QUAD4'
  []
  [gen]
    input = copy1
    type = RenameBlockGenerator
    old_block = "0"
    new_block = "1"
  []

  [copy2]
    type = ElementGenerator
    nodal_positions = '2 1 0
                       2 2 0
                       3 2 0
                       3 1 0'

    element_connectivity = '0 1 2 3'
    elem_type = 'QUAD4'
  []

  [cmbn]
    type = CombinerGenerator
    inputs = 'gen copy2'
  []

[]

[Outputs]
  exodus = true
[]
