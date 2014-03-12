require 'fig_newton/version'
require 'fig_newton/node'
require 'fig_newton/missing'
require 'yml_reader'

module FigNewton
  extend YmlReader
  extend FigNewton::Missing


  class << self
    attr_accessor :yml

    def default_directory
      'config/environments'
    end

    def load(filename)
      @yml = YAML.load(ERB.new(File.read("#{yml_directory}/#{filename}")).result)
    end

  end
end
