class AdvancedTree
	attr_accessor :children, :node_name

	def initialize(tree)
		@node_name = tree.keys[0]
		t = tree[@node_name]
		@children = []
		t.each {|k,v| @children.push(AdvancedTree.new({k => v}))}
	end

	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end

	def visit(&block)
		block.call self
	end
end