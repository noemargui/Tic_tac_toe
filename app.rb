####################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   REQUIRED   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#

require 'bundler'
Bundler.require

####################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   METHODS   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#


$:.unshift File.expand_path("./../lib", __FILE__)
require 'application'


#####################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   INITIALIZE   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#

                               Application.new.perform

                               run_game

#####################################################################################