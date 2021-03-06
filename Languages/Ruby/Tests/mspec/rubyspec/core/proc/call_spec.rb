require File.dirname(__FILE__) + '/../../spec_helper'
require File.dirname(__FILE__) + '/shared/call'

language_version __FILE__, "call"

describe "Proc#call" do
  it_behaves_like :proc_call, :call

  ruby_version_is "1.8.7" do
    it_behaves_like :proc_call_block_args, :call
  end
end

describe "Proc#call on a Proc created with Proc.new" do
  it_behaves_like :proc_call_on_proc_new, :call
end

describe "Proc#call on a Proc created with Kernel#lambda or Kernel#proc" do
  it_behaves_like :proc_call_on_proc_or_lambda, :call
end
