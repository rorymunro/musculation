class AddHyperextensionsAndSupermanToCustoms < ActiveRecord::Migration
  def change
    add_column :customs, :hyperextensions, :integer
    add_column :customs, :hyperextensionsre, :string
    add_column :customs, :souleve_jambes_raides1, :integer
    add_column :customs, :souleve_jambes_raides1re, :string
     add_column :customs, :superman, :integer
     add_column :customs, :supermanre, :string
      add_column :customs, :poingnee_inverse_rowing, :integer
      add_column :customs, :poingnee_inverse_rowingre, :string
       add_column :customs, :rowing_un_bras, :integer
       add_column :customs, :rowing_un_brasre, :string
        add_column :customs, :rowing_barre_long, :integer
        add_column :customs, :rowing_barre_longre, :string
        add_column :customs, :inverse_rowing, :integer
        add_column :customs, :inverse_rowingre, :string
        add_column :customs, :rowing_barre_long1, :integer
        add_column :customs, :rowing_barre_long1re, :string
  end
end
