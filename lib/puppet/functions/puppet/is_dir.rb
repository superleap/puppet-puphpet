# This is an autogenerated function, ported from the original legacy version.
# It /should work/ as is, but will not have all the benefits of the modern
# function API. You should see the function docs to learn how to add function
# signatures for type safety and to document this function using puppet-strings.
#
# https://puppet.com/docs/puppet/latest/custom_functions_ruby.html
#
# ---- original file header ----
#
# is_dir.rb
#

# ---- original file header ----
#
# @summary
#   
#    Returns true if directory exists
#
#
Puppet::Functions.create_function(:'puppet::is_dir') do
  # @param args
  #   The original array of arguments. Port this to individually managed params
  #   to get the full benefit of the modern function API.
  #
  # @return [Data type]
  #   Describe what the function returns here
  #
  dispatch :default_impl do
    # Call the method named 'default_impl' when this is matched
    # Port this to match individual params for better type safety
    repeated_param 'Any', :args
  end


  def default_impl(*args)
    

    unless args.length == 1
      raise Puppet::ParseError, ("is_dir(): wrong number of arguments (#{args.length}; must be 1)")
    end

    value = args[0]

    if File.directory?(value)
      return true
    end

    return false

  
  end
end
